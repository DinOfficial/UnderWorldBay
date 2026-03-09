import 'package:flutter/material.dart';
import 'package:underworld_bay/app/app_colors.dart';

class ColorPicker extends StatefulWidget {
  const ColorPicker({super.key, required this.colors, required this.onChange});

  final List<String> colors;
  final Function(String) onChange;

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  String? _selectedColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: widget.colors.map((color) {
        return GestureDetector(
          onTap: () {
            _selectedColor = color;
            setState(() {});
            widget.onChange(color);
          },
          child: Container(
            padding: .symmetric(horizontal: 12, vertical: 8),
            margin: .only(right: 8),
            decoration: BoxDecoration(
              color: color == _selectedColor ? AppColors.themeColor : Colors.white,
              borderRadius: .circular(8),
              border: .all(color: AppColors.themeColor),
            ),
            child: Text(
              color,
              style: TextStyle(color: color == _selectedColor ? Colors.white : Colors.black),
            ),
          ),
        );
      }).toList(),
    );
  }
}
