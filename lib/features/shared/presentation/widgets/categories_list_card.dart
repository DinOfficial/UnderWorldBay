
import 'package:flutter/material.dart';
import 'package:underworld_bay/features/products/presentation/screens/product_list_screen.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/extentions/utils_extention.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, ProductListScreen.name);
      },
      child: Column(
        children: [
          Container(
            padding: .all(12),
            decoration: BoxDecoration(
              color: AppColors.themeColor.withAlpha(30),
              borderRadius: .circular(12),
            ),
            child: Icon(Icons.computer_outlined, size: 60, color: AppColors.themeColor),
          ),
          const SizedBox(height: 4),
          Text(
            'Electronics',
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.themeColor,
            ),
          ),
        ],
      ),
    );
  }
}