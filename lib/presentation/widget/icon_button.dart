import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    required this.isVideoChat,
    required this.iconButton,
    super.key,
    this.opacity,
  });

  final bool isVideoChat;
  final double? opacity;
  final SvgPicture iconButton;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: !isVideoChat ? 30.r : 27.5.r,
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      child: iconButton,
    );
  }
}
