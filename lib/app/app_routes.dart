import 'package:flutter/material.dart';
import 'package:underworld_bay/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:underworld_bay/features/auth/presentation/screens/splash_screen.dart';

import '../features/auth/presentation/screens/otp_verify_screen.dart';
import '../features/auth/presentation/screens/sign_in_screen.dart';
import '../features/shared/presentation/screens/main_nav_holder_screen.dart';

class AppRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    Widget widget = SizedBox();

    switch (settings.name) {
      case SplashScreen.name:
        widget = const SplashScreen();
        break;
        case MainNavHolderScreen.name:
        widget = const MainNavHolderScreen();
        break;
      case SignUpScreen.name:
        widget = const SignUpScreen();
        break;
      case SignInScreen.name:
        widget = const SignInScreen();
        break;
      case OtpVerifyScreen.name:
        widget = const OtpVerifyScreen();
        break;
    }
    return MaterialPageRoute(builder: (context) => widget);
  }
}
