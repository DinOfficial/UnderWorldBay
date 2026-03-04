import 'package:flutter/material.dart';
import 'package:underworld_bay/features/shared/presentation/widgets/inc_dec_button.dart';

import '../widgets/price_and_add_to_cart_section.dart';
import '../widgets/product_details_carousel.dart';

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
          Expanded(
            child: Column(
              children: [
                ProductDetailsCarousel(),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Expanded(child: Column()),
                      SizedBox(width: 100, child: IncDecButton(onChange: (int count) {})),
                    ],
                  ),
                ),
              ],
            ),
          ),
          PriceAndAddToCartSection(price: 1000, onTapAddToCart: () {}),
        ],
      ),
    );
  }
}
