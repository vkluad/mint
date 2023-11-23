import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/presentation/widget/cached_image.dart';

import 'package:mint/theme/text_styles.dart';

class ConsultationBox extends StatelessWidget {
  const ConsultationBox({
    required this.plannedDate,
    required this.doctor,
    super.key,
  });
  final DateTime plannedDate;

  final Doctor doctor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.all(Radius.circular(10.r)),
      ),
      height: 80.h,
      width: 343.w,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  10.r,
                ),
              ),
              child: CachedImage(
                imageUrl: doctor.image ?? '',
                height: 43.h,
                width: 43.h,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 4.h),
                child: Text(
                  doctor.name,
                  style: TextStyles.caption4.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColor,),
                ),
              ),
              Text(
                  '${DateFormat('dd.MM.yyyy').format(plannedDate)}, ${DateFormat.Hm().format(plannedDate)}',
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(fontWeight: FontWeight.w500, fontSize: 13.sp),)
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.chevron_right,
            size: 36,
          )
        ],
      ),
    );
  }
}
