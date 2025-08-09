import 'package:scientific_leetspeak_app/domain/entities/practice_question.dart';
import 'package:scientific_leetspeak_app/domain/repositories/practice_repository.dart';

class PracticeRepositoryImpl implements PracticeRepository {
  final List<PracticeQuestion> _questions = [
    PracticeQuestion(
      question: 'What is the symbol for water?',
      options: ['H₂O', 'O₂', 'CO₂', 'NaCl'],
      correctAnswerIndex: 0,
    ),
    PracticeQuestion(
      question: 'What is the formula for mass-energy equivalence?',
      options: ['E=mc', 'E=mc²', 'E=m²c', 'E=m²c²'],
      correctAnswerIndex: 1,
    ),
  ];

  int _currentQuestionIndex = 0;

  @override
  Future<PracticeQuestion> getNextQuestion() async {
    await Future.delayed(const Duration(milliseconds: 500)); // Simulate network delay
    final question = _questions[_currentQuestionIndex];
    _currentQuestionIndex = (_currentQuestionIndex + 1) % _questions.length;
    return question;
  }
}