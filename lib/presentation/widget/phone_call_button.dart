import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mint/gen/assets.gen.dart';

class PhoneCallButton extends StatelessWidget {
  const PhoneCallButton({
    required this.callback,
    required this.buttonColor,
    super.key,
  });
  final VoidCallback callback;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: SvgPicture.asset(Assets.svg.decline),
    );
  }
}
