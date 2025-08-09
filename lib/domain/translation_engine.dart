import 'package:scientific_leetspeak_converter/data/word_symbol_data_source.dart';

class TranslationEngine {
  final Map<String, String> _dictionary = WordSymbolDataSource.wordMap;

  String translate(String text) {
    final sortedKeys = _dictionary.keys.toList()
      ..sort((a, b) => b.length.compareTo(a.length));

    for (final key in sortedKeys) {
      text = text.replaceAll(RegExp(RegExp.escape(key), caseSensitive: false), _dictionary[key]!);
    }

    return text;
  }
}