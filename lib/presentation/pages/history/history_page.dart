import 'package:flutter/material.dart';
import 'package:scientific_leetspeak_app/data/repositories/history_repository_impl.dart';
import 'package:scientific_leetspeak_app/domain/entities/translation.dart';
import 'package:scientific_leetspeak_app/domain/repositories/history_repository.dart';
import 'package:scientific_leetspeak_app/domain/usecases/get_translation_history.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  // In a real app, you would inject these dependencies.
  final HistoryRepository _historyRepository = HistoryRepositoryImpl();
  late final GetTranslationHistory _getTranslationHistory;

  List<Translation> _history = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _getTranslationHistory = GetTranslationHistory(_historyRepository);
    _loadHistory();
  }

  void _loadHistory() async {
    setState(() {
      _isLoading = true;
    });
    final history = await _getTranslationHistory();
    setState(() {
      _history = history;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? const Center(child: CircularProgressIndicator())
        : ListView.builder(
            itemCount: _history.length,
            itemBuilder: (context, index) {
              final translation = _history[index];
              return ListTile(
                title: Text(translation.originalText),
                subtitle: Text(translation.translatedText),
              );
            },
          );
  }
}