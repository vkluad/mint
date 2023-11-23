import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/widget/cached_image.dart';

import 'package:mint/theme/text_styles.dart';

class PaymentDoctorBox extends StatelessWidget {
  const PaymentDoctorBox({
    required this.doctor,
    required this.plannedDate,
    super.key,
  });
  final Doctor doctor;
  final DateTime plannedDate;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 10.w,
          ),
          child: doctor.image != null
              ? CachedImage(
                  imageUrl: doctor.image ?? '',
                  borderRadius: 10.r,
                  width: 53.h,
                  height: 53.h,
                )
              : SizedBox(
                  height: 53.h,
                  width: 53.w,
                  child: Image.asset(Assets.png.missingAvatar.path)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                bottom: 4.h,
              ),
              child: Text(
                doctor.name,
                style: TextStyles.title3
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
            ),
            Text(
              '${DateFormat('dd.MM.yyyy').format(plannedDate)}, ${DateFormat.Hm().format(plannedDate)}',
              style: TextStyles.caption1.copyWith(
                color: Theme.of(context).textTheme.displayMedium?.color,
              ),
            )
          ],
        ),
        const Spacer(),
        Column(
          children: [
            Text(
              '${doctor.price}₴',
              style: TextStyles.footnote.copyWith(
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Text(
              AppLocalizations.of(context)!.perVisit,
              style: TextStyles.caption1.copyWith(
                color: Theme.of(context).textTheme.displayMedium?.color,
              ),
            )
          ],
        )
      ],
    );
  }
}
