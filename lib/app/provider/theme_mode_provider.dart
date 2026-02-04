import 'package:flutter/material.dart';

class ThemeModeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  List<ThemeMode> get themeModes => [ThemeMode.system, ThemeMode.light, ThemeMode.dark];

  ThemeMode get themeMode => _themeMode;

  void themeModeChange(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.system:
        _themeMode = ThemeMode.system;
        notifyListeners();
        break;
      case ThemeMode.light:
        _themeMode = ThemeMode.light;
        notifyListeners();
        break;
      case ThemeMode.dark:
        _themeMode = ThemeMode.dark;
        notifyListeners();
        break;
    }
  }
}
