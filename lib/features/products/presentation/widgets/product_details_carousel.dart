import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class ProductDetailsCarousel extends StatefulWidget {
  const ProductDetailsCarousel({super.key});


  @override
  State<ProductDetailsCarousel> createState() => _ProductDetailsCarouselState();
}

class _ProductDetailsCarouselState extends State<ProductDetailsCarousel> {

  final ValueNotifier<int> _currentIndex = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 180.0,
            viewportFraction: 1,
            autoPlay: true,
            onPageChanged: (index, reason) {
              _currentIndex.value = index;
            },
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(color: Colors.grey.withAlpha(50), borderRadius: .circular(8)),
                  child: Center(child: Text('text $i', style: TextStyle(fontSize: 16.0))),
                );
              },
            );
          }).toList(),
        ),
        Positioned(
          bottom: 10,
          left: MediaQuery.sizeOf(context).width *.425,
          child: ValueListenableBuilder(
            valueListenable: _currentIndex,
            builder: (context, value, child) {
              return Row(
                mainAxisAlignment: .center,
                children: [
                  for (var i = 0; i < 5; i++)
                    Container(
                      height: 12,
                      width: 12,
                      margin: .only(right: 4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: value == i ? AppColors.themeColor : Colors.white,
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
