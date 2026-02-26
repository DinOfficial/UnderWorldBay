
import 'package:flutter/material.dart';
import 'package:underworld_bay/features/home/presentation/widgets/product_card.dart';

class HorizontalProductList extends StatelessWidget {
  const HorizontalProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.separated(
        scrollDirection: .horizontal ,
        itemCount: 10,
        itemBuilder: (context, index) {
          return ProductCard();
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 12);
        },
      ),
    );
  }
}