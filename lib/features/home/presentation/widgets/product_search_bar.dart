import 'package:flutter/material.dart';

class ProductSearchBar extends StatelessWidget {
  const ProductSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        contentPadding: .zero,
        prefixIcon: Icon(Icons.search_outlined),
        filled: true,
        fillColor: Colors.grey.withAlpha(50),
        enabledBorder: OutlineInputBorder(borderSide: .none, borderRadius: .circular(8)),
        focusedBorder: OutlineInputBorder(borderSide: .none, borderRadius: .circular(8)),
      ),
    );
  }
}
