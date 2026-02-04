import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:underworld_bay/app/extentions/localization_extention.dart';
import 'package:underworld_bay/l10n/app_localizations.dart';
import '../../../../app/providers/language_provider.dart';
import '../../../../app/providers/theme_mode_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);
    final themeProvider = Provider.of<ThemeModeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.hello),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: DropdownMenu(
              initialSelection: languageProvider.currentLocal,
              dropdownMenuEntries: languageProvider.supportedLocales
                  .map((e) => DropdownMenuEntry(value: e, label: e.languageCode))
                  .toList(),
              onSelected: (value) {
                languageProvider.changeLocale(value as Locale);
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.only(right: 10),
            child: DropdownMenu(
              initialSelection: themeProvider.themeMode,
              dropdownMenuEntries: themeProvider.themeModes
                  .map((e) => DropdownMenuEntry(value: e, label: e.name))
                  .toList(),
              onSelected: (value) {
                themeProvider.themeModeChange(value as ThemeMode);
              },
            ),
          ),
        ],
      ),
    );
  }
}
