import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../app/assets_path.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.height = 100, this.width = 100});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(child: SvgPicture.asset(AssetsPath.svgLogo));
  }
}
