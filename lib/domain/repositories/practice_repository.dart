import 'package:scientific_leetspeak_app/domain/entities/practice_question.dart';

abstract class PracticeRepository {
  Future<PracticeQuestion> getNextQuestion();
}