import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:underworld_bay/app/app_colors.dart';
import 'package:underworld_bay/features/home/presentation/screens/home_screen.dart';
import 'package:underworld_bay/features/shared/presentation/providers/main_nav_holder_provider.dart';

class MainNavHolderScreen extends StatefulWidget {
  const MainNavHolderScreen({super.key});

  static const String name = '/main-nav-holder';

  @override
  State<MainNavHolderScreen> createState() => _MainNavHolderScreenState();
}

class _MainNavHolderScreenState extends State<MainNavHolderScreen> {
  final List<Widget> _screens = [HomeScreen(), SizedBox(), SizedBox(), SizedBox()];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainNavHolderProvider>(
      builder: (context, mainNavProvider, _) {
        return Scaffold(
          body: _screens[mainNavProvider.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: mainNavProvider.updateIndex,
            currentIndex: mainNavProvider.currentIndex,
            showUnselectedLabels: true,
            selectedItemColor: AppColors.themeColor,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.white,
            elevation: 3,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Categories'),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Wishlist'),
            ],
          ),
        );
      },
    );
  }
}
