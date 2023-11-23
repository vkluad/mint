import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mint/presentation/widget/icon_button.dart';

class MediaChatButton extends StatelessWidget {
  const MediaChatButton({
    required this.callback,
    required this.buttonIcon,
    this.buttonText,
    super.key,
    this.opacity,
  });
  final VoidCallback callback;
  final SvgPicture buttonIcon;
  final String? buttonText;
  final double? opacity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: buttonText?.isNotEmpty ?? false
          ? Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: CustomIconButton(
                      iconButton: buttonIcon,
                      isVideoChat: false,
                      opacity: opacity,),
                ),
                if (buttonText?.isNotEmpty ?? true)
                  Padding(
                    padding: EdgeInsets.only(top: 18.h),
                    child: Text(buttonText ?? ''),
                  )
              ],
            )
          : CustomIconButton(iconButton: buttonIcon, isVideoChat: true),
    );
  }
}
