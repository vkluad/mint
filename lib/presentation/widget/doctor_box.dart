import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/widget/cached_image.dart';
import 'package:mint/presentation/widget/rating_bar.dart';
import 'package:mint/theme/text_styles.dart';

class DoctorBox extends StatelessWidget {
  const DoctorBox({
    required this.doctor,
    required this.callback,
    required this.isFavourite,
    super.key,
  });
  final Doctor doctor;
  final VoidCallback callback;
  final bool isFavourite;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      width: 376.w,
      height: 106.h,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 11.h,
          horizontal: 16.w,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 18.w),
              child: SizedBox(
                height: 84.h,
                width: 84.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      10.r,
                    ),
                  ),
                  child: doctor.image != null
                      ? CachedImage(
                          imageUrl: doctor.image ?? '',
                        )
                      : Image.asset(Assets.png.missingAvatar.path),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctor.name,
                  style: TextStyles.headline1.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 4.h, bottom: 19.h),
                  child: Text(
                    'Psycologist, ${AppLocalizations.of(context)!.experienceCount(doctor.experience!)}',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(fontSize: 13.sp),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                  width: 30.h,
                  child: CustomRatingBar(
                    rating: double.parse(doctor.rating.toString()),
                  ),
                )
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: callback.call,
                  child: SvgPicture.asset(
                    isFavourite ? Assets.svg.filledFav : Assets.svg.fav,
                    height: 24.h,
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).canvasColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 11.h),
                  child: Text(
                    '₴${doctor.price}',
                    style: TextStyles.caption4
                        .copyWith(color: Theme.of(context).primaryColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
