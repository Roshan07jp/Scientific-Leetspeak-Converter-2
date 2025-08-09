import 'package:scientific_leetspeak_app/domain/entities/translation.dart';
import 'package:scientific_leetspeak_app/domain/repositories/history_repository.dart';

class AddTranslationToHistory {
  final HistoryRepository repository;

  AddTranslationToHistory(this.repository);

  Future<void> call(Translation translation) {
    return repository.addTranslation(translation);
  }
}