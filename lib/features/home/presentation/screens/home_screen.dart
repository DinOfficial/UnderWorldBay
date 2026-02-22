import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../app/assets_path.dart';
import '../../../shared/presentation/providers/main_nav_holder_provider.dart';
import '../../../shared/presentation/widgets/home_category_list.dart';
import '../widgets/app_bar_action_icon.dart';
import '../widgets/home_slider.dart';
import '../widgets/horizontal_product_list.dart';
import '../widgets/product_search_bar.dart';
import '../widgets/section_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Column(
            children: [
              ProductSearchBar(),
              const SizedBox(height: 12),
              HomeSlider(),
              const SizedBox(height: 16),
              SectionHeader(
                name: 'All Categories',
                onTapSeeAll: () {
                  context.read<MainNavHolderProvider>().updateIndex(1);
                },
              ),
              const SizedBox(height: 12),
              HomeCategoryList(),
              const SizedBox(height: 12),
              SectionHeader(name: 'Popular', onTapSeeAll: () {}),
              const SizedBox(height: 12),
              HorizontalProductList(),
              const SizedBox(height: 12),
              SectionHeader(name: 'Special', onTapSeeAll: () {}),
              const SizedBox(height: 12),
              HorizontalProductList(),
              const SizedBox(height: 12),
              SectionHeader(name: 'New', onTapSeeAll: () {}),
              const SizedBox(height: 12),
              HorizontalProductList(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(AssetsPath.navSvgLogo),
      backgroundColor: Colors.white,
      actions: [
        AppBarActionIcon(icon: Icons.person_outline, onTap: () {}),
        AppBarActionIcon(icon: Icons.phone_outlined, onTap: () {}),
        AppBarActionIcon(icon: Icons.notifications_active_outlined, onTap: () {}),
      ],
    );
  }
}

