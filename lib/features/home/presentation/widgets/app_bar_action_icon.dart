import 'package:flutter/material.dart';

class AppBarActionIcon extends StatelessWidget {
  const AppBarActionIcon({super.key, required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: CircleAvatar(
        backgroundColor: Colors.grey.withAlpha(50),
        child: IconButton(
          onPressed: onTap,
          icon: Icon(icon, color: Colors.black54),
        ),
      ),
    );
  }
}