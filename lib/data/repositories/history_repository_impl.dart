import 'package:scientific_leetspeak_app/domain/entities/translation.dart';
import 'package:scientific_leetspeak_app/domain/repositories/history_repository.dart';

class HistoryRepositoryImpl implements HistoryRepository {
  final List<Translation> _history = [];

  @override
  Future<void> addTranslation(Translation translation) async {
    _history.insert(0, translation);
  }

  @override
  Future<List<Translation>> getHistory() async {
    return _history;
  }
}