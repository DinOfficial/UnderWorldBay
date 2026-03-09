import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:underworld_bay/app/app_colors.dart';
import 'package:underworld_bay/app/assets_path.dart';
import 'package:underworld_bay/app/constrants.dart';
import 'package:underworld_bay/app/extentions/utils_extention.dart';
import 'package:underworld_bay/features/shared/presentation/widgets/inc_dec_button.dart';

import '../../../shared/presentation/providers/main_nav_holder_provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, _) => _onTapBackButton,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: context.read<MainNavHolderProvider>().backToHome,
            icon: Icon(Icons.arrow_back),
          ),
          title: Text('Cart'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(8),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .78,
            child: ListView.separated(
              itemCount: 10,
              itemBuilder: (context, index) => Card(
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      padding: .all(4),
                      child: Image.asset(AssetsPath.dummyProductImg, fit: BoxFit.cover),
                    ),
                    const SizedBox(width: 12),
                    _buildTitleAndPriceSection(context),
                  ],
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(height: 12),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitleAndPriceSection(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: .start,
          crossAxisAlignment: .start,
          children: [
            Row(
              mainAxisAlignment: .start,
              crossAxisAlignment: .start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: .start,
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        'New year special shoe',
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                      Text(
                        'Color: Red, Size: L',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: .spaceBetween,
              crossAxisAlignment: .start,
              children: [
                Text(
                  '${Constants.takaSign} 100',
                  style: context.textTheme.titleLarge?.copyWith(color: AppColors.themeColor),
                ),
                SizedBox(width: 80, child: IncDecButton(onChange: (int value) {})),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _onTapBackButton() {
    context.read<MainNavHolderProvider>().backToHome();
  }
}
