import 'package:scientific_leetspeak_app/domain/entities/translation.dart';
import 'package:scientific_leetspeak_app/domain/repositories/history_repository.dart';

class GetTranslationHistory {
  final HistoryRepository repository;

  GetTranslationHistory(this.repository);

  Future<List<Translation>> call() {
    return repository.getHistory();
  }
}