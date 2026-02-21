import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/extentions/utils_extention.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.name, required this.onTapSeeAll});

  final String name;
  final VoidCallback onTapSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: .center,
      mainAxisAlignment: .spaceBetween,
      children: [
        Text(name, style: context.textTheme.titleLarge),
        TextButton(
          onPressed: onTapSeeAll,
          child: Text(
            'See All',
            style: context.textTheme.bodyLarge?.copyWith(color: AppColors.themeColor),
          ),
        ),
      ],
    );
  }
}
