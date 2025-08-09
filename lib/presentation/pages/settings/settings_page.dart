import 'package:flutter/material.dart';
import 'package:scientific_leetspeak_app/data/repositories/settings_repository_impl.dart';
import 'package:scientific_leetspeak_app/domain/entities/settings.dart';
import 'package:scientific_leetspeak_app/domain/repositories/settings_repository.dart';
import 'package:scientific_leetspeak_app/domain/usecases/get_settings.dart';
import 'package:scientific_leetspeak_app/domain/usecases/save_settings.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // In a real app, you would inject these dependencies.
  final SettingsRepository _settingsRepository = SettingsRepositoryImpl();
  late final GetSettings _getSettings;
  late final SaveSettings _saveSettings;

  AppSettings? _settings;

  @override
  void initState() {
    super.initState();
    _getSettings = GetSettings(_settingsRepository);
    _saveSettings = SaveSettings(_settingsRepository);
    _loadSettings();
  }

  void _loadSettings() async {
    final settings = await _getSettings();
    setState(() {
      _settings = settings;
    });
  }

  void _updateDarkMode(bool value) {
    final newSettings = AppSettings(
      isDarkMode: value,
      receiveNotifications: _settings!.receiveNotifications,
    );
    _saveSettings(newSettings);
    setState(() {
      _settings = newSettings;
    });
  }

  void _updateReceiveNotifications(bool value) {
    final newSettings = AppSettings(
      isDarkMode: _settings!.isDarkMode,
      receiveNotifications: value,
    );
    _saveSettings(newSettings);
    setState(() {
      _settings = newSettings;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_settings == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return ListView(
      children: [
        SwitchListTile(
          title: const Text('Dark Mode'),
          value: _settings!.isDarkMode,
          onChanged: _updateDarkMode,
        ),
        SwitchListTile(
          title: const Text('Receive Notifications'),
          value: _settings!.receiveNotifications,
          onChanged: _updateReceiveNotifications,
        ),
      ],
    );
  }
}