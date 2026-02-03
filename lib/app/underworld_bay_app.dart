import 'package:flutter/material.dart';
import 'package:underworld_bay/app/app_theme.dart';

import '../features/auth/presentation/screens/splash_screen.dart';
import 'app_routes.dart';

class UnderWorldBayApp extends StatelessWidget {
  const UnderWorldBayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      // initialRoute: '/',
      // onGenerateRoute: AppRoutes.onGenerateRoute,
      home:SplashScreen(),
    );
  }
}
