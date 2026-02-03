import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData _lightTheme = ThemeData.light();
  static final ThemeData _darkTheme = ThemeData.dark();

  static ThemeData get light => _lightTheme;

  static ThemeData get dark => _darkTheme;
}
