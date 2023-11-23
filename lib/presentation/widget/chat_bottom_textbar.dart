import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/presentation/widget/chat_text_field.dart';

class ChatBottomTextBar extends StatelessWidget {
  const ChatBottomTextBar({
    required this.controller,
    required this.imageCallback,
    required this.textFieldCallback,
    super.key,
  });
  final TextEditingController controller;
  final VoidCallback imageCallback;
  final void Function(String) textFieldCallback;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        child: Row(
          children: [
            GestureDetector(
              onTap: imageCallback,
              child: SvgPicture.asset(
                Assets.svg.attach,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).indicatorColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            SizedBox(
              width: 9.w,
            ),
            ChatTextField(
              callback: textFieldCallback,
              controller: controller,
            ),
            SizedBox(
              width: 9.w,
            ),
            SvgPicture.asset(
              Assets.svg.mic,
              colorFilter: ColorFilter.mode(
                Theme.of(context).indicatorColor,
                BlendMode.srcIn,
              ),
            )
          ],
        ),
      ),
    );
  }
}
