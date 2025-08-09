import 'package:flutter/material.dart';
import 'package:scientific_leetspeak_converter/data/repositories/settings_repository_impl.dart';
import 'package:scientific_leetspeak_converter/domain/entities/settings.dart';
import 'package:scientific_leetspeak_converter/domain/repositories/settings_repository.dart';
import 'package:scientific_leetspeak_converter/domain/usecases/get_settings.dart';
import 'package:scientific_leetspeak_converter/presentation/navigation/main_navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final SettingsRepository _settingsRepository = SettingsRepositoryImpl();
  late final GetSettings _getSettings;
  late final Future<AppSettings> _settingsFuture;

  @override
  void initState() {
    super.initState();
    _getSettings = GetSettings(_settingsRepository);
    _settingsFuture = _getSettings();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<AppSettings>(
      future: _settingsFuture,
      builder: (context, snapshot) {
        final settings = snapshot.data;
        final isDarkMode = settings?.isDarkMode ?? false;

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(
            home: Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }

        return MaterialApp(
          title: 'Scientific Leetspeak Converter',
          theme: ThemeData(
            brightness: isDarkMode ? Brightness.dark : Brightness.light,
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: const MainNavigator(),
        );
      },
    );
  }
}