import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:underworld_bay/app/app_theme.dart';
import 'package:underworld_bay/l10n/app_localizations.dart';
import '../features/auth/presentation/screens/splash_screen.dart';

class UnderWorldBayApp extends StatelessWidget {
  const UnderWorldBayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale:Locale('bn'),
      supportedLocales: [
        Locale('en'),
        Locale('bn'),
      ],
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      // initialRoute: '/',
      // onGenerateRoute: AppRoutes.onGenerateRoute,
      home:SplashScreen(),
    );
  }
}
