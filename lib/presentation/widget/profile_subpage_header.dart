import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mint/theme/text_styles.dart';

class ProfileSubpageHeader extends StatelessWidget {
  const ProfileSubpageHeader({required this.text, super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Text(
        text,
        style:
            TextStyles.headline.copyWith(color: Theme.of(context).primaryColor),
      ),
    );
  }
}
