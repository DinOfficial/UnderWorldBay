import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:underworld_bay/app/assets_path.dart';

import '../widgets/app_bar_action_icon.dart';
import '../widgets/product_search_bar.dart';

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
          AppBarActionIcon(icon: Icons.person_outline, onTap: () {}),
          AppBarActionIcon(icon: Icons.phone_outlined, onTap: () {}),
          AppBarActionIcon(icon: Icons.notifications_active_outlined, onTap: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        child: Column(
          children: [
            ProductSearchBar(),
          ],
        ),
      ),
    );
  }
}


