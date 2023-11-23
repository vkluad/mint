import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/widget/conversation_button.dart';
import 'package:mint/presentation/widget/custom_separator.dart';

class ConversationButtonRow extends StatelessWidget {
  const ConversationButtonRow(
      {required this.audioCallback,
      required this.videoCallback,
      required this.chatCallback,
      super.key,});
  final VoidCallback audioCallback;
  final VoidCallback videoCallback;
  final VoidCallback chatCallback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 32.w,
          vertical: 22.h,
        ),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.all(
            Radius.circular(
              10.r,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: audioCallback,
              child: ConversationButton(
                icon: SvgPicture.asset(
                  Assets.svg.call,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).indicatorColor,
                    BlendMode.srcIn,
                  ),
                ),
                text: AppLocalizations.of(context)!.call,
              ),
            ),
            const CustomSeparator(),
            GestureDetector(
              onTap: videoCallback,
              child: ConversationButton(
                icon: SvgPicture.asset(
                  Assets.svg.video,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).indicatorColor,
                    BlendMode.srcIn,
                  ),
                ),
                text: AppLocalizations.of(context)!.video,
              ),
            ),
            const CustomSeparator(),
            GestureDetector(
              onTap: chatCallback,
              child: ConversationButton(
                icon: SvgPicture.asset(
                  Assets.svg.chat,
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).indicatorColor,
                    BlendMode.srcIn,
                  ),
                ),
                text: AppLocalizations.of(context)!.chat,
              ),
            )
          ],
        ),
      ),
    );
  }
}
