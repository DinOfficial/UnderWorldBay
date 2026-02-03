import 'package:flutter/material.dart';
import 'package:underworld_bay/features/auth/presentation/screens/splash_screen.dart';

class AppRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings route) {
    Widget widget = SizedBox();

    switch(route.name){
      case '/':
        widget = SplashScreen();
        break;
    }
    return MaterialPageRoute(builder: (context) => widget);
  }
}