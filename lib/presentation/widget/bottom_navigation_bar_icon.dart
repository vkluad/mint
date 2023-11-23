import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mint/theme/palette.dart';

class BottomNavigationBarIcon extends StatelessWidget {
  const BottomNavigationBarIcon({
    required this.isActive,
    required this.imagePath,
    super.key,
  });
  final bool isActive;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imagePath,
      colorFilter: isActive
          ? const ColorFilter.mode(Palette.mainBlue, BlendMode.srcIn)
          : ColorFilter.mode(
              Theme.of(context).indicatorColor,
              BlendMode.srcIn,
            ),
    );
  }
}
