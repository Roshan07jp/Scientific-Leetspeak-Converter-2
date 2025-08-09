import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:scientific_leetspeak_app/data/repositories/history_repository_impl.dart';
import 'package:scientific_leetspeak_app/data/repositories/translation_repository_impl.dart';
import 'package:scientific_leetspeak_app/domain/repositories/history_repository.dart';
import 'package:scientific_leetspeak_app/domain/repositories/translation_repository.dart';
import 'package:scientific_leetspeak_app/domain/usecases/add_translation_to_history.dart';
import 'package:scientific_leetspeak_app/domain/usecases/translate_text.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'dart:async';

class TranslatePage extends StatefulWidget {
  const TranslatePage({super.key});

  @override
  State<TranslatePage> createState() => _TranslatePageState();
}

class _TranslatePageState extends State<TranslatePage> {
  final TextEditingController _controller = TextEditingController();
  String _translatedText = 'Translated text will appear here';

  // In a real app, you would inject these dependencies.
  final HistoryRepository _historyRepository = HistoryRepositoryImpl();
  final TranslationRepository _translationRepository =
      TranslationRepositoryImpl();
  late final AddTranslationToHistory _addTranslationToHistory;
  late final TranslateText _translateText;
  final SpeechToText _speechToText = SpeechToText();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _addTranslationToHistory = AddTranslationToHistory(_historyRepository);
    _translateText = TranslateText(_translationRepository);
    _controller.addListener(() {
      // Not using undo/redo for now
      // _undoRedoController.add(_controller.text);
    });
    _initSpeech();
  }

  void _initSpeech() async {
    await _speechToText.initialize();
    setState(() {});
  }

  void _startListening() async {
    await _speechToText.listen(onResult: (result) {
      setState(() {
        _controller.text = result.recognizedWords;
      });
    });
    setState(() {});
  }

  void _stopListening() async {
    await _speechToText.stop();
    setState(() {});
  }

  final _imagePicker = ImagePicker();
  final _textRecognizer = GoogleMlKit.vision.textRecognizer();

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    _textRecognizer.close();
    super.dispose();
  }

  void _pickImage() async {
    try {
      final pickedFile =
          await _imagePicker.pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        final inputImage = InputImage.fromFilePath(pickedFile.path);
        final recognizedText = await _textRecognizer.processImage(inputImage);
        setState(() {
          _controller.text = recognizedText.text;
        });
      }
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to pick image.')),
      );
    }
  }

  void _onTextChanged(String text) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      _translate(text);
    });
  }

  void _translate(String text) async {
    if (text.isEmpty) {
      setState(() {
        _translatedText = 'Translated text will appear here';
      });
      return;
    }

    setState(() {});

    try {
      final translation = await _translateText(text);
      await _addTranslationToHistory(translation);

      setState(() {
        _translatedText = translation.translatedText;
      });
    } catch (e) {
      setState(() {
        _translatedText = 'Error: Could not translate text.';
      });
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Translation failed. Please try again.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Input Field
            Expanded(
              flex: 2,
              child: TextField(
                controller: _controller,
                maxLines: null,
                expands: true,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Enter text to translate...',
                  counterText: '${_controller.text.split(' ').length} words',
                ),
                onChanged: _onTextChanged,
              ),
            ),
            const SizedBox(height: 16),
            // Output Area
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Symbol Explanation'),
                        content: const Text(
                            'This is where the explanation for the tapped symbol will be displayed.'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('Close'),
                          ),
                        ],
                      ),
                    );
                  },
                  child: SingleChildScrollView(
                    child: Text(_translatedText),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.undo),
                  onPressed: () {
                    setState(() {
                      // _controller.text = _undoRedoController.undo();
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.redo),
                  onPressed: () {
                    setState(() {
                      // _controller.text = _undoRedoController.redo();
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.copy),
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: _translatedText));
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Copied to clipboard')),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(
                      _speechToText.isListening ? Icons.mic_off : Icons.mic),
                  onPressed: _speechToText.isListening
                      ? _stopListening
                      : _startListening,
                ),
                IconButton(
                  icon: const Icon(Icons.camera_alt),
                  onPressed: _pickImage,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.clear();
          setState(() {
            _translatedText = 'Translated text will appear here';
          });
        },
        child: const Icon(Icons.clear),
      ),
    );
  }
}