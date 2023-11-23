import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/domain/entity/booking.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/theme/text_styles.dart';

class ConsultationNotes extends StatelessWidget {
  const ConsultationNotes({required this.booking, super.key});
  final Booking booking;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.all(
          Radius.circular(
            10.r,
          ),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: Text(
              AppLocalizations.of(context)!.notesSession,
              style: TextStyles.headline1.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          if (booking.description != null && booking.description != '')
            Text(
              booking.description ?? AppLocalizations.of(context)!.emptyDesc,
              style: TextStyles.body1,
            )
          else
            Text(
              AppLocalizations.of(context)!.emptyDesc,
              style: TextStyles.body1,
            )
        ],
      ),
    );
  }
}
