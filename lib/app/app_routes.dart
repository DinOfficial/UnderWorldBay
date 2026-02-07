import 'package:flutter/material.dart';
import 'package:underworld_bay/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:underworld_bay/features/auth/presentation/screens/splash_screen.dart';

class AppRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    Widget widget = SizedBox();

    switch (settings.name) {
      case SplashScreen.name:
        widget = const SplashScreen();
        break;
      case SignUpScreen.name:
        widget = const SignUpScreen();
        break;
    }
    return MaterialPageRoute(builder: (context) => widget);
  }
}
