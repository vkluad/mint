import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/backbone/utils.dart';

import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/auth/auth_bloc.dart';

import 'package:mint/presentation/bloc/booking/booking_bloc.dart';
import 'package:mint/presentation/bloc/payment/payment_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/apple_pay_button.dart';
import 'package:mint/presentation/widget/back_button.dart';

import 'package:mint/presentation/widget/loading_indicator.dart';
import 'package:mint/presentation/widget/payment_doctor_box.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

@RoutePage()
class PaymentPage extends StatefulWidget {
  const PaymentPage({
    required this.doctor,
    required this.plannedDate,
    this.description,
    super.key,
  });
  final Doctor doctor;
  final DateTime plannedDate;
  final String? description;
  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final _bloc = sl<BookingBloc>();
  final _paymentBloc = sl<PaymentBloc>();
  final _authBloc = sl<AuthBloc>();
  CardFormEditController controller = CardFormEditController();

  @override
  void initState() {
    super.initState();
    _authBloc.add(const GetCurrentUserIdEvent());
    _paymentBloc.add(const StartPaymentEvent());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      bloc: _authBloc,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          authenticated: (user) {
            return BlocConsumer<PaymentBloc, PaymentState>(
              bloc: _paymentBloc,
              listener: (context, state) {
                state.whenOrNull(
                  success: () {
                    showBookingToast(context);
                    _bloc.add(
                      CreateBookingEvent(
                        price: widget.doctor.price,
                        description: widget.description,
                        doctorId: widget.doctor.id,
                        time: widget.plannedDate,
                      ),
                    );

                    context.router.navigate(const DoctorsRoute());
                  },
                );
              },
              builder: (context, state) {
                return Scaffold(
                  resizeToAvoidBottomInset: false,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  appBar: AppBar(
                    toolbarHeight: 50,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    leadingWidth: 75.w,
                    leading: CustomBackButton(
                      callback: () => context.router.replace(
                        CheckoutRoute(
                          doctor: widget.doctor,
                          plannedDate: widget.plannedDate,
                        ),
                      ),
                    ),
                  ),
                  body: state.maybeWhen(
                    loading: () => const CustomLoadingIndicator(),
                    orElse: () => const SizedBox.shrink(),
                    failure: (error) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.errorOccured,
                              textAlign: TextAlign.center,
                              style: TextStyles.headline.copyWith(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Text(
                              error,
                              textAlign: TextAlign.center,
                              style: TextStyles.body1.copyWith(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    initial: () {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: Column(
                          children: [
                            PaymentDoctorBox(
                              doctor: widget.doctor,
                              plannedDate: widget.plannedDate,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 16.h),
                              child: const Divider(),
                            ),
                            CardFormField(
                              style: CardFormStyle(
                                borderRadius: 2,
                                borderColor: Colors.transparent,
                                borderWidth: 1,
                                textColor: Theme.of(context).primaryColor,
                                textErrorColor:
                                    Theme.of(context).colorScheme.error,
                                placeholderColor:
                                    Theme.of(context).indicatorColor,
                              ),
                              controller: controller,
                            ),
                            const Spacer(),
                            ListView(
                              shrinkWrap: true,
                              children: [
                                const ApplePayButton(),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5.h),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: CupertinoButton(
                                      color: Palette.mainBlue,
                                      disabledColor:
                                          Palette.mainBlue.withOpacity(0.5),
                                      onPressed: () {
                                        if (controller.details.complete) {
                                          _paymentBloc.add(
                                            CreatePaymentIntentEvent(
                                              useStripeSdk: true,
                                              billingDetails: BillingDetails(
                                                phone: user.number,
                                              ),
                                              currency: 'UAH',
                                              orderAmount:
                                                  widget.doctor.price,
                                            ),
                                          );
                                        }
                                      },
                                      child: Text(
                                        '${AppLocalizations.of(context)!.payAmount(widget.doctor.price)}₴',
                                        style: TextStyles.body.copyWith(
                                          fontWeight: FontWeight.w600,
                                          color: Palette.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
