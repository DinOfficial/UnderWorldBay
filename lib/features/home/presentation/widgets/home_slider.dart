import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:underworld_bay/app/app_colors.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  final ValueNotifier<int> _currentIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  decoration: BoxDecoration(color: Colors.amber, borderRadius: .circular(8)),
                  child: Center(child: Text('text $i', style: TextStyle(fontSize: 16.0))),
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 8),
        ValueListenableBuilder(
          valueListenable: _currentIndex,
          builder: (context, value, child) {
            return Row(
              mainAxisAlignment: .center,
              children: [
                for (var i = 0; i < 5; i++)
                  Container(
                    height: 10,
                    width: 10,
                    margin: .only(right: 4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: value == i ? AppColors.themeColor : Colors.white,
                      border: Border.all(color: AppColors.themeColor),
                    ),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}
