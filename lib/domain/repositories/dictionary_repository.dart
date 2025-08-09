import 'package:scientific_leetspeak_app/domain/entities/dictionary_entry.dart';

abstract class DictionaryRepository {
  Future<List<DictionaryEntry>> getEntries();
  Future<List<DictionaryEntry>> searchEntries(String query);
}