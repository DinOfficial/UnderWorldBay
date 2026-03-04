import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:underworld_bay/app/assets_path.dart';

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
          padding: .all(8),
          child: Card(
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  padding: .all(4),
                  child: Image.asset(AssetsPath.dummyProductImg, fit: BoxFit.cover),
                ),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  crossAxisAlignment: .start,
                  children: [Text('New year special shoe')],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapBackButton() {
    context.read<MainNavHolderProvider>().backToHome();
  }
}
