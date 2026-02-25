
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/assets_path.dart';
import '../../../../app/constrants.dart';
import '../../../../app/extentions/utils_extention.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Card(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: 160,
              padding: .all(12),
              decoration: BoxDecoration(
                color: AppColors.themeColor.withAlpha(30),
                borderRadius: .only(topLeft: .circular(8), topRight: .circular(8)),
              ),
              child: Image.asset(AssetsPath.dummyProductImg),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                'New year special shoe 30',
                style: context.textTheme.labelLarge?.copyWith(
                  overflow: .ellipsis,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: .symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                crossAxisAlignment: .center,
                children: [
                  Text(' ${Constants.takaSign} 100'),
                  Wrap(
                    crossAxisAlignment: .center,
                    children: [Icon(Icons.star,color: Colors.amberAccent,), Text('4.8')],
                  ),
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
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}