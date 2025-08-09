import 'package:scientific_leetspeak_app/domain/entities/translation.dart';
import 'package:scientific_leetspeak_app/domain/repositories/translation_repository.dart';

class TranslateText {
  final TranslationRepository repository;

  TranslateText(this.repository);

  Future<Translation> call(String text) {
    return repository.translate(text);
  }
}