// ignore_for_file: lines_longer_than_80_chars

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/back_button.dart';
import 'package:mint/presentation/widget/checkout_details_header.dart';
import 'package:mint/presentation/widget/checkout_details_time.dart';
import 'package:mint/presentation/widget/checkout_doctor_details.dart';
import 'package:mint/presentation/widget/checkout_doctor_image.dart';
import 'package:mint/presentation/widget/payment_details_text.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

@RoutePage()
class CheckoutPage extends StatefulWidget {
  const CheckoutPage({
    required this.doctor,
    required this.plannedDate,
    this.description,
    super.key,
  });
  final Doctor doctor;
  final DateTime plannedDate;
  final String? description;

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
          child: CupertinoButton(
            color: Palette.mainBlue,
            child: Text(
              AppLocalizations.of(context)!.pay,
              style: TextStyles.headline1.copyWith(color: Palette.white),
            ),
            onPressed: () => context.router.replace(
              PaymentRoute(
                plannedDate: widget.plannedDate,
                doctor: widget.doctor,
                description: widget.description,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        toolbarHeight: 50.h,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leadingWidth: 75.w,
        leading: CustomBackButton(
          callback: () => context.router.popAndPush(
            ConsultationSummaryRoute(
              doctor: widget.doctor,
              plannedDate: widget.plannedDate,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
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
                      CheckoutDoctorImage(imageUrl: widget.doctor.image),
                      CheckoutDoctorDetails(doctor: widget.doctor),
                      const Spacer(),
                      Text(
                        '${widget.doctor.price}₴',
                        style: TextStyles.footnote.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColor,
                        ),
                      )
                    ],
                  ),
                  const Divider(),
                  CheckoutBookingDetails(
                    plannedDate:
                        '${DateFormat.MMMd().format(widget.plannedDate)}, ${DateFormat.y().format(widget.plannedDate)}',
                    header: AppLocalizations.of(context)!.date,
                  ),
                  CheckoutBookingDetails(
                    header: AppLocalizations.of(context)!.time,
                    plannedDate:
                        '${DateFormat('hh:mm').format(widget.plannedDate)} - ${DateFormat('hh:mm a').format(widget.plannedDate.add(const Duration(minutes: 30)))}',
                  )
                ],
              ),
            ),
            const PaymentDetailsHeader(),
            const PaymentDetailsText(),
          ],
        ),
      ),
    );
  }
}
