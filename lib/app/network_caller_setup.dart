import 'package:flutter/material.dart';

import '../app/underworld_bay_app.dart';
import '../core/services/network_caller.dart';
import '../features/auth/presentation/screens/otp_verify_screen.dart';

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
    OtpVerifyScreen.name,
  );
}
