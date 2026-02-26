import 'package:flutter/material.dart';
import 'package:underworld_bay/features/products/presentation/screens/product_list_screen.dart';

import 'categories_list_card.dart';

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductListScreen.name);
      },
      child: SizedBox(
        height: 112,
        child: ListView.separated(
          scrollDirection: .horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return CategoriesCard();
          },
          separatorBuilder: (_, _) {
            return const SizedBox(width: 28);
          },
        ),
      ),
    );
  }
}
