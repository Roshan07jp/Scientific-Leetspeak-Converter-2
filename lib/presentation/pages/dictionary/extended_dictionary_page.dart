import 'package:flutter/material.dart';
import '../../../data/extended_symbol_data_source.dart';
import '../../../domain/symbol.dart';

class ExtendedDictionaryPage extends StatefulWidget {
  const ExtendedDictionaryPage({super.key});

  @override
  State<ExtendedDictionaryPage> createState() => _ExtendedDictionaryPageState();
}

class _ExtendedDictionaryPageState extends State<ExtendedDictionaryPage> {
  List<Symbol> _symbols = [];
  List<Symbol> _filteredSymbols = [];
  final List<String> _categories = ['All', 'Favorites', 'Physics', 'Chemistry', 'Biology', 'Math', 'Quantum'];
  String _selectedCategory = 'All';
  final TextEditingController _searchController = TextEditingController();
  String _sortOption = 'Alphabetical';

  @override
  void initState() {
    super.initState();
    _symbols = ExtendedSymbolDataSource.symbols;
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
        final categoryMatches = _selectedCategory == 'All' ||
            (_selectedCategory == 'Favorites' && symbol.isFavorite) ||
            symbol.category == _selectedCategory;
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
        title: const Text('Extended Dictionary'),
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
            child: _filteredSymbols.isEmpty
                ? const Center(
                    child: Text('No symbols found. Try a different search or category.'),
                  )
                : ListView.builder(
                    itemCount: _filteredSymbols.length,
                    itemBuilder: (context, index) {
                      final symbol = _filteredSymbols[index];
                      return Card(
                        margin: const EdgeInsets.all(8.0),
                        child: ExpansionTile(
                          leading: IconButton(
                            icon: Icon(
                              symbol.isFavorite ? Icons.favorite : Icons.favorite_border,
                              color: symbol.isFavorite ? Colors.red : null,
                            ),
                            onPressed: () {
                              setState(() {
                                symbol.isFavorite = !symbol.isFavorite;
                                _filterSymbols();
                              });
                            },
                          ),
                          title: Text(symbol.symbol),
                          subtitle: Text(symbol.meaning),
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
                                  const SizedBox(height: 8.0),
                                  Text('Category: ${symbol.category}'),
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