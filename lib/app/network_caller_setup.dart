import 'package:flutter/cupertino.dart';
import 'package:underworld_bay/app/underworld_bay_app.dart';
import 'package:underworld_bay/core/services/network_caller.dart';
import 'package:underworld_bay/features/auth/presentation/screens/sign_in_screen.dart';

NetWorkCaller getNetworkCaller() {
  return NetWorkCaller(
    headers: {'content-type': 'application/json'},
    onUnauthorized: () {
      _moveToSignInScreen();
    },
  );
}

void _moveToSignInScreen() {
  Navigator.pushNamed(
    UnderWorldBayApp.navigatorKey.currentContext!,
    SignInScreen.name,
  );
}
