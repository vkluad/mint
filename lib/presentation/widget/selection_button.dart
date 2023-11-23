import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class SelectionButton extends StatelessWidget {
  const SelectionButton({
    required this.imageAsset,
    required this.buttonColor,
    required this.text,
    required this.iconHeight,
    required this.iconWidth,
    required this.padding,
    super.key,
  });
  final String imageAsset;
  final Color buttonColor;
  final String text;
  final double iconHeight;
  final double iconWidth;
  final EdgeInsets padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      width: 164.w,
      height: 98.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: padding,
            child: SizedBox(
              height: iconHeight,
              width: iconWidth,
              child: SvgPicture.asset(
                imageAsset,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(left: 10.w, bottom: 10.h),
            child: Text(
              text,
              style: TextStyles.hugeButton.copyWith(
                color: Palette.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
