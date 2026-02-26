import 'package:flutter/material.dart';

import '../widgets/price_and_add_to_cart_section.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  static const String name = '/product-details';

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, title: Text('Product Details')),
      body: Column(
        children: [
          Expanded(child: SizedBox()),
          PriceAndAddToCartSection(price: 1000, onTapAddToCart: () {  },),
        ],
      ),
    );
  }
}
