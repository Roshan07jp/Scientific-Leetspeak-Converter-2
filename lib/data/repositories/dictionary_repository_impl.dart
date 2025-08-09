import 'package:scientific_leetspeak_app/domain/entities/dictionary_entry.dart';
import 'package:scientific_leetspeak_app/domain/repositories/dictionary_repository.dart';

class DictionaryRepositoryImpl implements DictionaryRepository {
  final List<DictionaryEntry> _entries = [
    DictionaryEntry(symbol: 'H₂O', name: 'Water', description: 'A molecule consisting of two hydrogen atoms and one oxygen atom.'),
    DictionaryEntry(symbol: 'E=mc²', name: 'Mass-energy equivalence', description: 'The relationship between mass and energy in special relativity.'),
    DictionaryEntry(symbol: 'Ψ', name: 'Psi', description: 'The wave function in quantum mechanics.'),
    DictionaryEntry(symbol: 'λ', name: 'Lambda', description: 'Wavelength.'),
  ];

  @override
  Future<List<DictionaryEntry>> getEntries() async {
    await Future.delayed(const Duration(milliseconds: 500)); // Simulate network delay
    return _entries;
  }

  @override
  Future<List<DictionaryEntry>> searchEntries(String query) async {
    await Future.delayed(const Duration(milliseconds: 500)); // Simulate network delay
    if (query.isEmpty) {
      return _entries;
    }
    return _entries.where((entry) => entry.name.toLowerCase().contains(query.toLowerCase()) || entry.symbol.toLowerCase().contains(query.toLowerCase())).toList();
  }
}