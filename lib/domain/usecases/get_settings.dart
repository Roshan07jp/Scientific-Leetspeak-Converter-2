import 'package:scientific_leetspeak_app/domain/entities/settings.dart';
import 'package:scientific_leetspeak_app/domain/repositories/settings_repository.dart';

class GetSettings {
  final SettingsRepository repository;

  GetSettings(this.repository);

  Future<AppSettings> call() {
    return repository.getSettings();
  }
}