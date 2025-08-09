import 'package:scientific_leetspeak_app/domain/entities/dictionary_entry.dart';
import 'package:scientific_leetspeak_app/domain/repositories/dictionary_repository.dart';

class SearchDictionaryEntries {
  final DictionaryRepository repository;

  SearchDictionaryEntries(this.repository);

  Future<List<DictionaryEntry>> call(String query) {
    return repository.searchEntries(query);
  }
}