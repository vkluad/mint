import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class DoctorViewRating extends StatelessWidget {
  const DoctorViewRating({required this.rating, super.key});
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.svg.filledStar,
          colorFilter: const ColorFilter.mode(
            Palette.mainBlue,
            BlendMode.srcIn,
          ),
          height: 16.h,
          width: 16.w,
        ),
        Padding(
          padding: EdgeInsets.only(left: 3.w, right: 6.w),
          child: Text(
            rating.toString(),
            style: TextStyles.footnote.copyWith(
              color: Theme.of(context).textTheme.displayMedium?.color,
              fontSize: 13.sp,
            ),
          ),
        ),
      ],
    );
  }
}
