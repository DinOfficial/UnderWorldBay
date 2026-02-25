import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:underworld_bay/app/app_colors.dart';
import 'package:underworld_bay/app/constrants.dart';
import 'package:underworld_bay/app/extentions/utils_extention.dart';

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
          Container(
            padding: .all(16),
            decoration: BoxDecoration(
              color: AppColors.themeColor.withAlpha(30),
              borderRadius: .only(topRight: Radius.circular(16), topLeft: Radius.circular(16)),
            ),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Column(
                  children: [
                    Text('Price', style: context.textTheme.bodyLarge,),
                    Text('${Constants.takaSign} 1000', style: context.textTheme.titleLarge?.copyWith(color: AppColors.themeColor),),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.themeColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: .circular(8)
                    )
                  ),
                    onPressed: () {},
                    child: Text('Add to cart', style: TextStyle(color: Colors.white),))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
