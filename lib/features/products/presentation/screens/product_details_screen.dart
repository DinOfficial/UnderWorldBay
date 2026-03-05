import 'package:flutter/material.dart';
import 'package:underworld_bay/app/extentions/utils_extention.dart';
import 'package:underworld_bay/features/products/presentation/widgets/size_picker.dart';
import 'package:underworld_bay/features/shared/presentation/widgets/inc_dec_button.dart';

import '../../../../app/app_colors.dart';
import '../widgets/color_picker.dart';
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
          ProductDetailsCarousel(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    _buildProductTitleSection(context),
                    const SizedBox(height: 16),
                    Text(
                      'Color',
                      style: context.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8),
                    ColorPicker(
                      colors: ['Blue', 'Red', 'Green', 'Yellow'],
                      onChange: (String color) {},
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Size',
                      style: context.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8),
                    SizePicker(sizes: ['S', 'M', 'L', 'XL', 'XXL'], onChange: (String size) {}),
                    const SizedBox(height: 16),
                    Text(
                      'Description',
                      style: context.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '''orem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets con''',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          PriceAndAddToCartSection(price: 1000, onTapAddToCart: () {}),
        ],
      ),
    );
  }

  Widget _buildProductTitleSection(BuildContext context) {
    return Row(
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
              const SizedBox(height: 4),
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
                        child: Icon(Icons.favorite_border, color: Colors.white, size: 16),
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
    );
  }
}
