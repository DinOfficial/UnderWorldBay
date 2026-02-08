import 'package:flutter/material.dart';
import 'package:underworld_bay/app/app_colors.dart';

class AppTheme {
  static final ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    colorSchemeSeed: AppColors.themeColor,
    scaffoldBackgroundColor: Colors.white,
    inputDecorationTheme: _inputThemeData,
    filledButtonTheme: _filledButtonData,
  );
  static final ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorSchemeSeed: AppColors.themeColor,
    inputDecorationTheme: _inputThemeData,
    filledButtonTheme: _filledButtonData,
  );

  static InputDecorationThemeData get _inputThemeData {
    return InputDecorationThemeData(
      hintStyle: TextStyle(color: Colors.grey),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.themeColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.themeColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: AppColors.themeColor),
      ),
    );
  }

  static FilledButtonThemeData get _filledButtonData {
    return FilledButtonThemeData(
      style: FilledButton.styleFrom(
        fixedSize: Size.fromWidth(double.maxFinite),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.symmetric(vertical: 12),
        backgroundColor: AppColors.themeColor,
      ),
    );
  }

  static ThemeData get light => _lightTheme;

  static ThemeData get dark => _darkTheme;
}
