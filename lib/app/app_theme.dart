import 'package:flutter/material.dart';
import 'package:underworld_bay/app/app_colors.dart';

class AppTheme {
  static final ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    colorSchemeSeed: AppColors.themeColor,
    scaffoldBackgroundColor: Colors.white,
  );
  static final ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorSchemeSeed: AppColors.themeColor,
  );

  static ThemeData get light => _lightTheme;

  static ThemeData get dark => _darkTheme;
}
