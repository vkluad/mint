import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/theme/palette.dart';

class CustomRatingBar extends StatelessWidget {
  const CustomRatingBar({required this.rating, super.key, this.padding});
  final double rating;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return RatingBar(
      ignoreGestures: true,
      itemPadding: padding ?? EdgeInsets.only(right: 4.w),
      direction: Axis.vertical,
      itemSize: 16.w,
      initialRating: rating,
      ratingWidget: RatingWidget(
        full: SvgPicture.asset(
          Assets.svg.filledStar,
          colorFilter: const ColorFilter.mode(
            Palette.mainBlue,
            BlendMode.srcIn,
          ),
        ),
        half: SvgPicture.asset(
          Assets.svg.halfStar,
          colorFilter: const ColorFilter.mode(
            Palette.mainBlue,
            BlendMode.srcIn,
          ),
        ),
        empty: SvgPicture.asset(
          Assets.svg.star,
          colorFilter: const ColorFilter.mode(
            Palette.mainBlue,
            BlendMode.srcIn,
          ),
        ),
      ),
      onRatingUpdate: (value) => {},
    );
  }
}
