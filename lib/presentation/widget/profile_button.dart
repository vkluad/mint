import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    required this.callback,
    required this.buttonText,
    required this.svgPicture,
    this.isLogoutButton,
    this.isGroupped,
    super.key,
  });
  final VoidCallback callback;
  final String buttonText;
  final SvgPicture svgPicture;
  final bool? isLogoutButton;
  final bool? isGroupped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: isGroupped != null
                ? BorderRadius.vertical(top: Radius.circular(8.r))
                : BorderRadius.all(Radius.circular(8.r)),
          ),
          padding: EdgeInsets.only(
            left: 16.w,
            top: 16.h,
            bottom: 16.h,
            right: 7.w,
          ),
          child: Row(
            children: [
              svgPicture,
              SizedBox(
                width: 6.w,
              ),
              Text(
                buttonText,
                style: TextStyles.title3.copyWith(
                  color: isLogoutButton != null
                      ? Palette.whiteErrorRed
                      : Theme.of(context).primaryColor,
                ),
              ),
              const Spacer(),
              const Icon(Icons.chevron_right)
            ],
          ),
        ),
      ),
    );
  }
}
