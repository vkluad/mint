import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mint/domain/entity/booking.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/widget/cached_image.dart';

import 'package:mint/theme/text_styles.dart';

class ConsultationSummaryBox extends StatelessWidget {
  const ConsultationSummaryBox({
    required this.doctor,
    required this.booking,
    super.key,
  });
  final Doctor doctor;
  final Booking booking;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.all(
              Radius.circular(
                10.r,
              ),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 6.w),
                    child: SizedBox(
                      width: 39.w,
                      height: 39.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            10.r,
                          ),
                        ),
                        child: doctor.image != null
                            ? CachedImage(
                                imageUrl: doctor.image!,
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
                        style: TextStyles.title3
                            .copyWith(color: Theme.of(context).primaryColor),
                      ),
                      Text(
                        doctor.profession ?? '',
                        style: TextStyles.caption1.copyWith(
                          color: Theme.of(context).indicatorColor,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Text(
                    '${doctor.price}₴',
                    style: TextStyles.footnote.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.date,
                    style: TextStyles.footnote1.copyWith(
                      color: Theme.of(context).textTheme.displaySmall?.color,
                    ),
                  ),
                  Text(
                    '${DateFormat.MMMd().format(booking.time)}, ${DateFormat.y().format(booking.time)}',
                    style: TextStyles.footnote1,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.time,
                    style: TextStyles.footnote1.copyWith(
                      color: Theme.of(context).textTheme.displaySmall?.color,
                    ),
                  ),
                  Text(
                    '${DateFormat('hh:mm').format(booking.time)} - ${DateFormat('hh:mm a').format(booking.time.add(const Duration(minutes: 30)))}',
                    style: TextStyles.footnote1,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
