import 'package:scientific_leetspeak_app/domain/entities/settings.dart';
import 'package:scientific_leetspeak_app/domain/repositories/settings_repository.dart';

class SaveSettings {
  final SettingsRepository repository;

  SaveSettings(this.repository);

  Future<void> call(AppSettings settings) {
    return repository.saveSettings(settings);
  }
}