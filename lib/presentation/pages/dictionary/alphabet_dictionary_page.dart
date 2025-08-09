import 'package:flutter/material.dart';
import '../../../data/alphabet_symbol_data_source.dart';
import '../../../domain/symbol.dart';

class AlphabetDictionaryPage extends StatefulWidget {
  const AlphabetDictionaryPage({super.key});

  @override
  State<AlphabetDictionaryPage> createState() => _AlphabetDictionaryPageState();
}

class _AlphabetDictionaryPageState extends State<AlphabetDictionaryPage> {
  List<Symbol> _symbols = [];
  List<Symbol> _filteredSymbols = [];
  final List<String> _categories = ['All', 'Physics', 'Quantum', 'Biology', 'Chemistry', 'Math'];
  String _selectedCategory = 'All';
  final TextEditingController _searchController = TextEditingController();
  String _sortOption = 'Alphabetical';

  @override
  void initState() {
    super.initState();
    _symbols = AlphabetSymbolDataSource.symbols;
    _filteredSymbols = _symbols;
    _searchController.addListener(_filterSymbols);
    _filterSymbols();
  }

  void _filterSymbols() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredSymbols = _symbols.where((symbol) {
        final symbolMatches = symbol.symbol.toLowerCase().contains(query);
        final meaningMatches = symbol.meaning.toLowerCase().contains(query);
        final categoryMatches = _selectedCategory == 'All' || symbol.category == _selectedCategory;
        return (symbolMatches || meaningMatches) && categoryMatches;
      }).toList();
      if (_sortOption == 'Alphabetical') {
        _filteredSymbols.sort((a, b) => a.symbol.compareTo(b.symbol));
      }
    });
  }

  void _onCategorySelected(String category) {
    setState(() {
      _selectedCategory = category;
      _filterSymbols();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scientific Alphabet'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              setState(() {
                _sortOption = value;
                _filterSymbols();
              });
            },
            itemBuilder: (BuildContext context) {
              return {'Alphabetical'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _categories.length,
              itemBuilder: (context, index) {
                final category = _categories[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: ChoiceChip(
                    label: Text(category),
                    selected: _selectedCategory == category,
                    onSelected: (_) => _onCategorySelected(category),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredSymbols.length,
              itemBuilder: (context, index) {
                final symbol = _filteredSymbols[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ExpansionTile(
                    title: Text('${symbol.symbol} - ${symbol.meaning}'),
                    subtitle: Text(symbol.category),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (symbol.equation.isNotEmpty) ...[
                              Text('Equation: ${symbol.equation}'),
                              const SizedBox(height: 8.0),
                            ],
                            Text('Usage: ${symbol.usage}'),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}