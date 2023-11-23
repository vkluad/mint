import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/theme/palette.dart';

class AddProfilePhotoButton extends StatelessWidget {
  const AddProfilePhotoButton({required this.callback, super.key});
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Palette.white),
        child: SvgPicture.asset(Assets.svg.camera),
      ),
    );
  }
}
