class TranslationEngine {
  final Map<String, String> _dictionary;

  TranslationEngine(this._dictionary);

  String translate(String text) {
    final sortedKeys = _dictionary.keys.toList()
      ..sort((a, b) => b.length.compareTo(a.length));

    for (final key in sortedKeys) {
      text = text.replaceAll(key, _dictionary[key]!);
    }

    return text;
  }
}