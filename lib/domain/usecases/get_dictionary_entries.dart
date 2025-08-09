import 'package:scientific_leetspeak_app/domain/entities/dictionary_entry.dart';
import 'package:scientific_leetspeak_app/domain/repositories/dictionary_repository.dart';

class GetDictionaryEntries {
  final DictionaryRepository repository;

  GetDictionaryEntries(this.repository);

  Future<List<DictionaryEntry>> call() {
    return repository.getEntries();
  }
}