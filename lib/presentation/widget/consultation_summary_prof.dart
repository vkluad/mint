import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/theme/text_styles.dart';

class SummaryProfession extends StatelessWidget {
  const SummaryProfession({required this.doctor, super.key});
  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 19.h,
      ),
      child: Text(
        'Psycologist, ${AppLocalizations.of(context)!.experienceCount(doctor.experience!)}',
        style: TextStyles.footnote1
            .copyWith(color: Theme.of(context).textTheme.displayMedium?.color),
      ),
    );
  }
}
