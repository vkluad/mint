import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/theme/text_styles.dart';

class ChatTextField extends StatelessWidget {
  const ChatTextField({
    required this.callback,
    required this.controller,
    super.key,
  });
  final void Function(String value) callback;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 33.h,
        padding: EdgeInsets.only(left: 13.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Theme.of(context).cardColor,
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                style: TextStyle(color: Theme.of(context).primaryColor),
                cursorColor: Theme.of(context).primaryColor,
                controller: controller,
                onSubmitted: callback,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context)!.messageHint,
                  hintStyle: TextStyles.caption2.copyWith(
                    fontSize: 14.sp,
                    color: Theme.of(context).textTheme.displayMedium?.color,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: SvgPicture.asset(
                Assets.svg.smile,
                colorFilter: ColorFilter.mode(
                    Theme.of(context).indicatorColor, BlendMode.srcIn,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
