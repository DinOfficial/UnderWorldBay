import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:underworld_bay/app/app_theme.dart';
import 'package:underworld_bay/app/provider/language_provider.dart';
import 'package:underworld_bay/l10n/app_localizations.dart';
import '../features/auth/presentation/screens/splash_screen.dart';

class UnderWorldBayApp extends StatelessWidget {
  const UnderWorldBayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => LanguageProvider())],
      child: Consumer<LanguageProvider>(
        builder: (context, languageProvider, child) {
          return MaterialApp(
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: languageProvider.currentLocal,
            supportedLocales: [Locale('en'), Locale('bn')],
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            themeMode: ThemeMode.system,
            home: SplashScreen(),
          );
        },
      ),
    );
  }
}
