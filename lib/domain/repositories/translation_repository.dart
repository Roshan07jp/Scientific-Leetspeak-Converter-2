import 'package:scientific_leetspeak_app/domain/entities/translation.dart';

abstract class TranslationRepository {
  Future<Translation> translate(String text);
}