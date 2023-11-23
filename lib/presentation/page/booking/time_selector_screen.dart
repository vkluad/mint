import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/domain/entity/booking.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/booking/booking_bloc.dart';
import 'package:mint/presentation/bloc/doctors/doctor_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/custom_time_container.dart';
import 'package:mint/presentation/widget/sheet_title.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class TimeSelector extends StatefulWidget {
  const TimeSelector({
    required this.selectedDate,
    required this.doctor,
    this.callback,
    this.booking,
    super.key,
  });
  final DateTime selectedDate;
  final Doctor doctor;
  final VoidCallback? callback;
  final Booking? booking;
  @override
  State<TimeSelector> createState() => _TimeSelectorState();
}

class _TimeSelectorState extends State<TimeSelector> {
  final List<DateTime> timeSlots = [];
  DateTime? selectedTime;
  final _bloc = sl<BookingBloc>();
  final _doctorBloc = sl<DoctorBloc>();

  @override
  void initState() {
    super.initState();
    getTimeChips();
  }

  void getTimeChips() {
    var startTime = DateTime(
      widget.selectedDate.year,
      widget.selectedDate.month,
      widget.selectedDate.day,
      12,
    );

    final endTime = DateTime(
      widget.selectedDate.year,
      widget.selectedDate.month,
      widget.selectedDate.day,
      21,
    );

    const duration = Duration(minutes: 30);

    while (startTime.isBefore(endTime)) {
      timeSlots.add(startTime);
      startTime = startTime.add(duration);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingBloc, BookingState>(
      bloc: _bloc,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          loaded: (bookings) {
            final completeSelectedDate = DateTime(
              widget.selectedDate.year,
              widget.selectedDate.month,
              widget.selectedDate.day,
              selectedTime?.hour ?? 0,
              selectedTime?.minute ?? 0,
            );
            return BlocBuilder<DoctorBloc, DoctorState>(
              bloc: _doctorBloc,
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox.shrink(),
                  loaded: (doctors) {
                    final doctorBookings = doctors
                            .firstWhere(
                              (doctor) => doctor.id == widget.doctor.id,
                            )
                            .bookings ??
                        [];
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SheetTitle(),
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: 10.h,
                                  top: 24.h,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    AppLocalizations.of(context)
                                        !.chooseRightTime,
                                    style: TextStyles.caption3.copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.color,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: context.router.pop,
                                child: CustomTimeContainer(
                                    date: widget.selectedDate,),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 32.5.h,
                                ),
                                child: Wrap(
                                  children: timeSlots.map((date) {
                                    final isSelected = date == selectedTime;
                                    final isBooked = doctorBookings.any(
                                      (booking) =>
                                          booking.time.year ==
                                              widget.selectedDate.year &&
                                          booking.time.month ==
                                              widget.selectedDate.month &&
                                          booking.time.day ==
                                              widget.selectedDate.day &&
                                          booking.time.hour == date.hour &&
                                          booking.time.minute == date.minute,
                                    );

                                    final isTimePast =
                                        date.isBefore(DateTime.now());

                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selectedTime = DateTime(
                                            widget.selectedDate.year,
                                            widget.selectedDate.month,
                                            widget.selectedDate.day,
                                            date.hour,
                                            date.minute,
                                          );
                                        });
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          right: 11.w,
                                          bottom: 11.h,
                                        ),
                                        child: Container(
                                          width: 45.w,
                                          height: 38.h,
                                          decoration: BoxDecoration(
                                            border: isSelected
                                                ? Border.all(
                                                    color: Colors.blue,
                                                  )
                                                : null,
                                            color: Theme.of(context).cardColor,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(10.r),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              DateFormat.Hm().format(date),
                                              style:
                                                  TextStyles.caption1.copyWith(
                                                fontSize: 11.sp,
                                                color: isSelected
                                                    ? Theme.of(context)
                                                        .primaryColor
                                                    : isBooked || isTimePast
                                                        ? Theme.of(context)
                                                            .unselectedWidgetColor
                                                        : Theme.of(context)
                                                            .textTheme
                                                            .bodyMedium
                                                            ?.color,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              )
                            ],
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 16.w,
                            ),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: CupertinoButton(
                                color: Palette.mainBlue,
                                disabledColor:
                                    Palette.mainBlue.withOpacity(0.5),
                                onPressed: completeSelectedDate
                                            .isAfter(DateTime.now()) &&
                                        selectedTime != null &&
                                        !doctorBookings.any(
                                          (booking) =>
                                              booking.time.year ==
                                                  completeSelectedDate.year &&
                                              booking.time.month ==
                                                  completeSelectedDate.month &&
                                              booking.time.day ==
                                                  completeSelectedDate.day &&
                                              booking.time.hour ==
                                                  completeSelectedDate.hour &&
                                              booking.time.minute ==
                                                  completeSelectedDate.minute,
                                        )
                                    ? () {
                                        if (widget.booking != null) {
                                          Navigator.pop(context);
                                          _bloc.add(
                                            UpdateBookingTimeEvent(
                                              widget.booking!.id,
                                              widget.booking!.doctorId,
                                              selectedTime ?? DateTime.now(),
                                            ),
                                          );
                                          context.router
                                              .replace(const DoctorsRoute());
                                        } else {
                                          Navigator.pop(context);
                                          context.router.navigate(
                                            ConsultationSummaryRoute(
                                              doctor: widget.doctor,
                                              plannedDate: selectedTime ??
                                                  DateTime.now(),
                                            ),
                                          );
                                        }
                                      }
                                    : null,
                                child: Text(
                                  AppLocalizations.of(context)!.continueButton,
                                  style: const TextStyle(color: Palette.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
