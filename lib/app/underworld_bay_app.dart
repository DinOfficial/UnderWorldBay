import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:underworld_bay/app/app_routes.dart';
import 'package:underworld_bay/app/app_theme.dart';
import 'package:underworld_bay/app/providers/language_provider.dart';
import 'package:underworld_bay/app/providers/theme_mode_provider.dart';
import 'package:underworld_bay/l10n/app_localizations.dart';
import '../features/auth/presentation/screens/splash_screen.dart';

class UnderWorldBayApp extends StatelessWidget {
  const UnderWorldBayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LanguageProvider()),
        ChangeNotifierProvider(create: (_) => ThemeModeProvider()),
      ],
      child: Consumer2<LanguageProvider, ThemeModeProvider>(
        builder: (context, languageProvider, themeProvider, child) {
          return MaterialApp(
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: languageProvider.currentLocal,
            supportedLocales: [Locale('en'), Locale('bn')],
            debugShowCheckedModeBanner: false,
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            themeMode:themeProvider.themeMode,
            initialRoute: '/',
            onGenerateRoute: AppRoutes.onGenerateRoute,
          );
        },
      ),
    );
  }
}
