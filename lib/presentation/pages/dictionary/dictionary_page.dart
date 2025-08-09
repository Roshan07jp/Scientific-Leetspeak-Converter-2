import 'package:flutter/material.dart';
import 'package:scientific_leetspeak_app/data/repositories/dictionary_repository_impl.dart';
import 'package:scientific_leetspeak_app/domain/entities/dictionary_entry.dart';
import 'package:scientific_leetspeak_app/domain/repositories/dictionary_repository.dart';
import 'package:scientific_leetspeak_app/domain/usecases/get_dictionary_entries.dart';
import 'package:scientific_leetspeak_app/domain/usecases/search_dictionary_entries.dart';

class DictionaryPage extends StatefulWidget {
  const DictionaryPage({super.key});

  @override
  State<DictionaryPage> createState() => _DictionaryPageState();
}

class _DictionaryPageState extends State<DictionaryPage> {
  // In a real app, you would inject these dependencies.
  final DictionaryRepository _repository = DictionaryRepositoryImpl();
  late final GetDictionaryEntries _getDictionaryEntries;
  late final SearchDictionaryEntries _searchDictionaryEntries;

  List<DictionaryEntry> _entries = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _getDictionaryEntries = GetDictionaryEntries(_repository);
    _searchDictionaryEntries = SearchDictionaryEntries(_repository);
    _loadEntries();
  }

  Future<void> _loadEntries() async {
    setState(() {
      _isLoading = true;
    });
    final entries = await _getDictionaryEntries();
    setState(() {
      _entries = entries;
      _isLoading = false;
    });
  }

  Future<void> _search(String query) async {
    setState(() {
      _isLoading = true;
    });
    final entries = await _searchDictionaryEntries(query);
    setState(() {
      _entries = entries;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: _search,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Search for a symbol',
            ),
          ),
        ),
        Expanded(
          child: _isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: _entries.length,
                  itemBuilder: (context, index) {
                    final entry = _entries[index];
                    return ListTile(
                      title: Text('${entry.symbol} - ${entry.name}'),
                      subtitle: Text(entry.description),
                    );
                  },
                ),
        ),
      ],
    );
  }
}