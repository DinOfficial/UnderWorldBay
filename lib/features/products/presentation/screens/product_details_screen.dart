import 'package:flutter/material.dart';
import 'package:underworld_bay/app/extentions/utils_extention.dart';
import 'package:underworld_bay/features/shared/presentation/widgets/inc_dec_button.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/constrants.dart';
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
                    mainAxisAlignment: .spaceBetween,
                    crossAxisAlignment: .start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: .spaceBetween,
                          crossAxisAlignment: .start,
                          children: [
                            Text(
                              'Happy New Year Special Deal',
                              style: context.textTheme.titleLarge,
                              maxLines: 2,
                              overflow: .ellipsis,
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                Row(
                                  mainAxisAlignment: .spaceBetween,
                                  crossAxisAlignment: .center,
                                  spacing: 4,
                                  children: [
                                    Wrap(
                                      crossAxisAlignment: .center,
                                      children: [
                                        Icon(Icons.star, color: Colors.amberAccent, size: 24),
                                        Text('4.8', style: TextStyle(fontSize: 16)),
                                      ],
                                    ),
                                    const SizedBox(width: 4),
                                    TextButton(onPressed: () {}, child: Text('Reviews')),
                                    const SizedBox(width: 4),
                                    Container(
                                      padding: .all(4),
                                      decoration: BoxDecoration(
                                        color: AppColors.themeColor,
                                        borderRadius: .circular(8),
                                      ),
                                      child: Icon(
                                        Icons.favorite_border,
                                        color: Colors.white,
                                        size: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 90, child: IncDecButton(onChange: (int count) {})),
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
