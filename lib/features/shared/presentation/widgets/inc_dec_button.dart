import 'package:flutter/material.dart';
import 'package:underworld_bay/app/app_colors.dart';

class IncDecButton extends StatefulWidget {
  const IncDecButton({super.key, this.width = 100, required this.onChange});

  final double width;
  final Function(int) onChange;

  @override
  State<IncDecButton> createState() => _IncDecButtonState();
}

class _IncDecButtonState extends State<IncDecButton> {
  int _count = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        _buildButton(Icons.remove, () {
          if (_count > 1) {
            _count--;
            setState(() {});
            widget.onChange(_count);
          }
        }),
        Text(_count.toString(), style: TextStyle(fontSize: 20)),
        _buildButton(Icons.add, () {
          _count++;
          widget.onChange(_count);
          setState(() {});
        }),
      ],
    );
  }

  Widget _buildButton(IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: AppColors.themeColor, borderRadius: .circular(4)),
        child: Padding(padding: const EdgeInsets.all(4), child: Icon(icon)),
      ),
    );
  }
}
