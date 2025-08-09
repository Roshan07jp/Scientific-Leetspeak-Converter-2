import 'package:scientific_leetspeak_app/domain/entities/practice_question.dart';
import 'package:scientific_leetspeak_app/domain/repositories/practice_repository.dart';

class GetNextPracticeQuestion {
  final PracticeRepository repository;

  GetNextPracticeQuestion(this.repository);

  Future<PracticeQuestion> call() {
    return repository.getNextQuestion();
  }
}