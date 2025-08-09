import 'package:scientific_leetspeak_app/domain/entities/settings.dart';
import 'package:scientific_leetspeak_app/domain/repositories/settings_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  static const String _isDarkModeKey = 'isDarkMode';
  static const String _receiveNotificationsKey = 'receiveNotifications';

  @override
  Future<AppSettings> getSettings() async {
    final prefs = await SharedPreferences.getInstance();
    final isDarkMode = prefs.getBool(_isDarkModeKey) ?? false;
    final receiveNotifications = prefs.getBool(_receiveNotificationsKey) ?? true;
    return AppSettings(
      isDarkMode: isDarkMode,
      receiveNotifications: receiveNotifications,
    );
  }

  @override
  Future<void> saveSettings(AppSettings settings) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_isDarkModeKey, settings.isDarkMode);
    await prefs.setBool(_receiveNotificationsKey, settings.receiveNotifications);
  }
}