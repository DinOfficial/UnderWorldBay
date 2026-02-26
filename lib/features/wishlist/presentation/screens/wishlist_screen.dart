import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:underworld_bay/features/home/presentation/widgets/product_card.dart';
import 'package:underworld_bay/features/shared/presentation/widgets/categories_list_card.dart';

import '../../../shared/presentation/providers/main_nav_holder_provider.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, __) {
        _onTapBackButton();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: context.read<MainNavHolderProvider>().backToHome,
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          title: Text('Wishlist'),
        ),
        body: GridView.builder(
          itemCount: 40,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 12
          ),
          itemBuilder: (context, index) {
            return FittedBox(
                child: ProductCard()
            );
          },
        ),
      ),
    );
  }

  void _onTapBackButton() {
    context.read<MainNavHolderProvider>().backToHome();
  }
}
