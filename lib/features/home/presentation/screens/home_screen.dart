import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../app/assets_path.dart';
import '../../../shared/presentation/providers/main_nav_holder_provider.dart';
import '../../../shared/presentation/widgets/home_category_list.dart';
import '../widgets/app_bar_action_icon.dart';
import '../widgets/home_slider.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
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
            SectionHeader(
              name: 'Popular',
              onTapSeeAll: () {},
            ),
            const SizedBox(height: 12),
            Card(
              child: SizedBox(
                width: 140,
                height: 120,
                child: Column(
                  children: [
                    Container(
                      width: 140,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: .only(topLeft: .circular(8), topRight: .circular(8))
                      ),
                      child: Image.asset(AssetsPath.dummyProductImg, fit: .scaleDown,),
                    )
                  ],
                ),
              ),
            )
          ],
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

