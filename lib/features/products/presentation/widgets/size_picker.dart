import 'package:flutter/material.dart';
import 'package:underworld_bay/app/app_colors.dart';

class SizePicker extends StatefulWidget {
  const SizePicker({super.key, required this.sizes, required this.onChange});

  final List<String> sizes;
  final Function(String) onChange;

  @override
  State<SizePicker> createState() => _SizePickerState();
}

class _SizePickerState extends State<SizePicker> {
  String? _selectedSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: widget.sizes.map((color) {
        return GestureDetector(
          onTap: () {
            _selectedSize = color;
            setState(() {});
            widget.onChange(color);
          },
          child: Container(
            padding: .symmetric(horizontal: 12, vertical: 8),
            margin: .only(right: 8),
            decoration: BoxDecoration(
              color: color == _selectedSize ? AppColors.themeColor : Colors.white,
              borderRadius: .circular(8),
              border: .all(color: AppColors.themeColor),
            ),
            child: Text(
              color,
              style: TextStyle(color: color == _selectedSize ? Colors.white : Colors.black),
            ),
          ),
        );
      }).toList(),
    );
  }
}
