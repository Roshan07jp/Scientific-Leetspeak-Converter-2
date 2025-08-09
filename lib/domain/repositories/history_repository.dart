import 'package:scientific_leetspeak_app/domain/entities/translation.dart';

abstract class HistoryRepository {
  Future<void> addTranslation(Translation translation);
  Future<List<Translation>> getHistory();
}