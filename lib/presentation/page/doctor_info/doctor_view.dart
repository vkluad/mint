import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/back_button.dart';
import 'package:mint/presentation/widget/cached_image.dart';
import 'package:mint/presentation/widget/doctor_info_specialties.dart';
import 'package:mint/presentation/widget/doctor_view_price.dart';
import 'package:mint/presentation/widget/doctor_view_profession.dart';
import 'package:mint/presentation/widget/doctor_view_rating.dart';
import 'package:mint/theme/text_styles.dart';

class DoctorView extends StatelessWidget {
  const DoctorView({
    required this.doctor,
    required this.favCallback,
    required this.isFavourite,
    required this.countReviews,
    required this.sumReviews,
    super.key,
    this.callback,
  });
  final Doctor doctor;
  final VoidCallback? callback;
  final VoidCallback favCallback;
  final bool isFavourite;
  final int countReviews;
  final int sumReviews;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(
                  16.r,
                ),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 322.w,
                child: doctor.image != null
                    ? CachedImage(
                        imageUrl: doctor.image!,
                      )
                    : Image.asset(Assets.png.missingAvatar.path),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 16.h,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DoctorViewNamePriceHeader(
                    name: doctor.name,
                    price: doctor.price,
                  ),
                  DoctorViewProfession(
                    profession: doctor.profession ?? 'Psycologist',
                    experience: doctor.experience ?? 0,
                  ),
                  DoctorViewRating(
                      rating: double.parse(
                          (sumReviews / countReviews).toStringAsFixed(2),),),
                  Padding(
                    padding: const EdgeInsets.only(top: 21),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 12.h),
                          child: Text(
                            AppLocalizations.of(context)!.specialization,
                            style: TextStyles.headline1.copyWith(
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                        DoctorInfoSpecialties(specialities: doctor.specialities)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 11.h,
                right: 22.w,
              ),
              child: CustomBackButton(
                callback: () {
                  if (callback != null) {
                    callback!.call();
                  } else {
                    context.router.navigate(const SpecialistsRoute());
                  }
                },
              ),
            ),
            GestureDetector(
              onTap: favCallback,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 11.h,
                  right: 22.w,
                ),
                child: !isFavourite
                    ? SvgPicture.asset(
                        Assets.svg.fav,
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).canvasColor,
                          BlendMode.srcIn,
                        ),
                      )
                    : SvgPicture.asset(
                        Assets.svg.filledFav,
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).canvasColor,
                          BlendMode.srcIn,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
