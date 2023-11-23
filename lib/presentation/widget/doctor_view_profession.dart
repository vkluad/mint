import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/theme/text_styles.dart';

class DoctorViewProfession extends StatelessWidget {
  const DoctorViewProfession(
      {required this.profession, required this.experience, super.key,});
  final String profession;
  final int experience;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: 8.h,
          ),
          child: Text(
            '$profession, $experience years',
            style: TextStyles.subhead.copyWith(
              color: Theme.of(context).textTheme.displayMedium?.color,
            ),
          ),
        ),
        const Spacer(),
        Text(
          AppLocalizations.of(context)!.perVisit,
          style: TextStyles.subhead.copyWith(
            color: Theme.of(context).textTheme.displayMedium?.color,
            fontSize: 13.sp,
          ),
        ),
      ],
    );
  }
}
