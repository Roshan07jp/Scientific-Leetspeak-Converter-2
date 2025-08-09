class Symbol {
  final String symbol;
  final String meaning;
  final String equation;
  final String usage;
  final String category;
  bool isFavorite;

  Symbol({
    required this.symbol,
    required this.meaning,
    required this.equation,
    required this.usage,
    required this.category,
    this.isFavorite = false,
  });
}