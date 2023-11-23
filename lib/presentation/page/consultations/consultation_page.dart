import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/backbone/utils.dart';

import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/booking/booking_bloc.dart';
import 'package:mint/presentation/bloc/doctors/doctor_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/back_button.dart';

import 'package:mint/presentation/widget/consultation_box.dart';
import 'package:mint/presentation/widget/consultation_cancel_button.dart';
import 'package:mint/presentation/widget/consultation_notes.dart';
import 'package:mint/presentation/widget/conversation_button_row.dart';
import 'package:mint/presentation/widget/loading_indicator.dart';

import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

@RoutePage()
class ConsultationPage extends StatefulWidget {
  const ConsultationPage({
    @PathParam('bookingId') required this.bookingId,
    super.key,
  });
  final String bookingId;

  @override
  State<ConsultationPage> createState() => _ConsultationPageState();
}

class _ConsultationPageState extends State<ConsultationPage> {
  final _bookingBloc = sl<BookingBloc>();
  final _doctorBloc = sl<DoctorBloc>();

  @override
  void initState() {
    _bookingBloc.add(const GetBookingsEvent());
    _doctorBloc.add(const GetDoctorsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorBloc, DoctorState>(
      bloc: _doctorBloc,
      builder: (context, doctorState) {
        return doctorState.maybeWhen(
          loaded: (doctors) {
            return BlocBuilder<BookingBloc, BookingState>(
              bloc: _bookingBloc,
              builder: (context, state) {
                return state.maybeWhen(
                  loaded: (bookings) {
                    final selectedBooking = bookings.firstWhere(
                      (booking) => booking.id == widget.bookingId,
                    );
                    final bookingDoctor = doctors.firstWhere(
                      (doctor) => doctor.id == selectedBooking.doctorId,
                    );
                    return Scaffold(
                      bottomSheet: Container(
                        padding: EdgeInsets.only(
                          bottom: 5.h,
                        ),
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: selectedBooking.time.isAfter(DateTime.now()) &&
                                !selectedBooking.isCompleted
                            ? IntrinsicHeight(
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 167.w,
                                        height: 50.h,
                                        child: FittedBox(
                                          child: CupertinoButton(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 55,
                                              vertical: 16,
                                            ),
                                            color: Palette.mainBlue,
                                            onPressed: () =>
                                                showDatePickerSheet(
                                              context: context,
                                              doctor: bookingDoctor,
                                              booking: selectedBooking,
                                            ),
                                            child: Text(
                                              AppLocalizations.of(
                                                context,
                                              )!.reschedule,
                                              style: TextStyles.body1.copyWith(
                                                color: Palette.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 167.w,
                                        height: 50.h,
                                        child: FittedBox(
                                          child: ConsultationCancelButton(
                                            callback: () =>
                                                showCancelationDialog(
                                              context: context,
                                              callback: () {
                                                _bookingBloc.add(
                                                  RemoveBookingEvent(
                                                    selectedBooking.id,
                                                    bookingDoctor.id,
                                                  ),
                                                );
                                                context.router.navigate(
                                                  const DoctorsRoute(),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            : SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 50.h,
                                child: CupertinoButton(
                                  color: Palette.mainBlue,
                                  onPressed: () => showDatePickerSheet(
                                    context: context,
                                    doctor: bookingDoctor,
                                  ),
                                  child: Text(
                                    AppLocalizations.of(context)!.bookAgain,
                                    style: TextStyles.body1.copyWith(
                                      color: Palette.white,
                                    ),
                                  ),
                                ),
                              ),
                      ),
                      appBar: AppBar(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        leadingWidth: 75.w,
                        leading: CustomBackButton(
                          callback: () =>
                              context.router.navigate(DoctorsRoute()),
                        ),
                      ),
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      body: SafeArea(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: SingleChildScrollView(
                            child: IntrinsicHeight(
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  minHeight:
                                      MediaQuery.of(context).size.height - 75.h,
                                ),
                                child: Column(
                                  children: [
                                    ConsultationSummaryBox(
                                      doctor: bookingDoctor,
                                      booking: selectedBooking,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 16.h,
                                      ),
                                      child: ConsultationNotes(
                                        booking: selectedBooking,
                                      ),
                                    ),
                                    ConversationButtonRow(
                                      audioCallback: () {
                                        context.router.navigate(
                                          MediaCallRoute(
                                            doctor: bookingDoctor,
                                            isVideoCall: false,
                                            booking: selectedBooking,
                                          ),
                                        );
                                      },
                                      videoCallback: () {
                                        context.router.navigate(
                                          MediaCallRoute(
                                            doctor: bookingDoctor,
                                            isVideoCall: true,
                                            booking: selectedBooking,
                                          ),
                                        );
                                      },
                                      chatCallback: () {
                                        context.router.navigate(
                                          ChatRoute(
                                            doctorId: bookingDoctor.id,
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  loading: () => const CustomLoadingIndicator(),
                  orElse: () => const SizedBox.shrink(),
                );
              },
            );
          },
          loading: () => const CustomLoadingIndicator(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
