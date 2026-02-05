import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:underworld_bay/app/assets_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(child: SvgPicture.asset(AssetsPath.svgLogo))
          ],
        ),
      ),
    );
  }
}
