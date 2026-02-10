import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:underworld_bay/app/assets_path.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(AssetsPath.navSvgLogo),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CircleAvatar(
              backgroundColor: Colors.grey.withAlpha(50),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.person_outline, color: Colors.black54),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CircleAvatar(
              backgroundColor: Colors.grey.withAlpha(50),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.phone_outlined, color: Colors.black54),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CircleAvatar(
              backgroundColor: Colors.grey.withAlpha(50),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_active_outlined, color: Colors.black54),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
