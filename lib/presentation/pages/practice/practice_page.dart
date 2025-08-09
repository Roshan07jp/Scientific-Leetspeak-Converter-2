import 'package:flutter/material.dart';
import 'package:scientific_leetspeak_app/data/repositories/practice_repository_impl.dart';
import 'package:scientific_leetspeak_app/domain/entities/practice_question.dart';
import 'package:scientific_leetspeak_app/domain/repositories/practice_repository.dart';
import 'package:scientific_leetspeak_app/domain/usecases/get_next_practice_question.dart';

class PracticePage extends StatefulWidget {
  const PracticePage({super.key});

  @override
  State<PracticePage> createState() => _PracticePageState();
}

class _PracticePageState extends State<PracticePage> {
  // In a real app, you would inject these dependencies.
  final PracticeRepository _practiceRepository = PracticeRepositoryImpl();
  late final GetNextPracticeQuestion _getNextPracticeQuestion;

  PracticeQuestion? _currentQuestion;
  bool _isLoading = false;
  int? _selectedAnswerIndex;
  bool? _isCorrect;

  @override
  void initState() {
    super.initState();
    _getNextPracticeQuestion = GetNextPracticeQuestion(_practiceRepository);
    _loadNextQuestion();
  }

  void _loadNextQuestion() async {
    setState(() {
      _isLoading = true;
      _selectedAnswerIndex = null;
      _isCorrect = null;
    });
    final question = await _getNextPracticeQuestion();
    setState(() {
      _currentQuestion = question;
      _isLoading = false;
    });
  }

  void _checkAnswer(int selectedIndex) {
    setState(() {
      _selectedAnswerIndex = selectedIndex;
      _isCorrect = selectedIndex == _currentQuestion!.correctAnswerIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading || _currentQuestion == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            _currentQuestion!.question,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          ...List.generate(_currentQuestion!.options.length, (index) {
            return ElevatedButton(
              onPressed: _selectedAnswerIndex == null
                  ? () => _checkAnswer(index)
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: _getButtonColor(index),
              ),
              child: Text(_currentQuestion!.options[index]),
            );
          }),
          if (_selectedAnswerIndex != null)
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                children: [
                  Text(
                    _isCorrect! ? 'Correct!' : 'Wrong!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: _isCorrect! ? Colors.green : Colors.red,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _loadNextQuestion,
                    child: const Text('Next Question'),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }

  Color? _getButtonColor(int index) {
    if (_selectedAnswerIndex == null) {
      return null;
    }
    if (index == _currentQuestion!.correctAnswerIndex) {
      return Colors.green;
    }
    if (index == _selectedAnswerIndex) {
      return Colors.red;
    }
    return null;
  }
}