import 'package:scientific_leetspeak_app/domain/entities/translation.dart';
import 'package:scientific_leetspeak_app/domain/repositories/translation_repository.dart';

import 'package:scientific_leetspeak_app/domain/translation_engine.dart';

class TranslationRepositoryImpl implements TranslationRepository {
  final TranslationEngine _engine;

  TranslationRepositoryImpl()
      : _engine = TranslationEngine({
          'hello world': '👋🌍',
          'hello': '👋',
          'world': '🌍',
          'a': 'α',
          'b': 'β',
          'c': 'γ',
          // ... more rules
        });

  @override
  Future<Translation> translate(String text) async {
    await Future.delayed(const Duration(milliseconds: 100)); // Simulate processing time
    final translatedText = _engine.translate(text);
    return Translation(originalText: text, translatedText: translatedText);
  }
}