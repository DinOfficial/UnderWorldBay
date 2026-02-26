import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/constrants.dart';
import '../../../../app/extentions/utils_extention.dart';

class PriceAndAddToCartSection extends StatelessWidget {
  const PriceAndAddToCartSection({
    super.key, required this.price, required this.onTapAddToCart,
  });

  final double price;
  final VoidCallback onTapAddToCart;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Text('${Constants.takaSign} $price', style: context.textTheme.titleLarge?.copyWith(color: AppColors.themeColor),),
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.themeColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: .circular(8)
                  )
              ),
              onPressed: onTapAddToCart,
              child: Text('Add to cart', style: TextStyle(color: Colors.white),))
        ],
      ),
    );
  }
}