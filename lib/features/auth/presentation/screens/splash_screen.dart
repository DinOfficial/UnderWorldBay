import 'package:flutter/material.dart';
import 'package:underworld_bay/features/auth/presentation/screens/sign_up_screen.dart';
import '../widgets/app_logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String name = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _moveToNextScreen();
    super.initState();
  }

  Future<void> _moveToNextScreen() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, SignUpScreen.name);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(child: AppLogo(height: 120)),
            CircularProgressIndicator(),
            const SizedBox(height: 12),
            Text('Version 1.0'),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
