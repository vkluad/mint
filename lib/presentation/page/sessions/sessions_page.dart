import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/domain/entity/booking.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/booking/booking_bloc.dart';
import 'package:mint/presentation/bloc/doctors/doctor_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/loading_indicator.dart';
import 'package:mint/presentation/widget/upcoming_consultation_box.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

@RoutePage()
class SessionsPage extends StatefulWidget {
  const SessionsPage({super.key});

  @override
  State<SessionsPage> createState() => _SessionsPageState();
}

class _SessionsPageState extends State<SessionsPage> {
  Map<int, List<Booking>> segmentedBookings = {};

  @override
  void initState() {
    super.initState();
    _bloc.state.whenOrNull(
      loaded: (bookings) {
        print(bookings);
      },
    );
    _bloc.stream.listen((event) {
      event.whenOrNull(
        loaded: (bookings) {
          print(bookings);
        },
      );
    });
  }

  final _bloc = sl<BookingBloc>();
  final _doctorBloc = sl<DoctorBloc>();

  int currentSegment = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: BlocBuilder<BookingBloc, BookingState>(
          bloc: _bloc,
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox.shrink(),
              loading: () => const CustomLoadingIndicator(),
              loaded: (bookings) {
                segmentedBookings = {
                  0: bookings
                      .where(
                        (booking) =>
                            booking.time.isAfter(DateTime.now()) &&
                            (!booking.isCompleted),
                      )
                      .toList(),
                  1: bookings.where((booking) => booking.isCompleted).toList(),
                };
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 16.h,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10.r)),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: CupertinoSlidingSegmentedControl<int>(
                            backgroundColor: Theme.of(context).cardColor,
                            thumbColor: Palette.mainBlue,
                            children: {
                              0: Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10.h,
                                ),
                                child: Text(
                                  AppLocalizations.of(context)!.upcoming,
                                  style: currentSegment == 0
                                      ? TextStyles.tagBig.copyWith(
                                          color: Palette.white,
                                        )
                                      : TextStyles.tagBig.copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .displayMedium
                                              ?.color,
                                        ),
                                ),
                              ),
                              1: Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10.h,
                                ),
                                child: Text(
                                  AppLocalizations.of(context)!.previous,
                                  style: currentSegment == 1
                                      ? TextStyles.tagBig.copyWith(
                                          color: Palette.white,
                                        )
                                      : TextStyles.tagBig.copyWith(
                                          color: Theme.of(context)
                                              .textTheme
                                              .displayMedium
                                              ?.color,
                                        ),
                                ),
                              ),
                            },
                            onValueChanged: (value) {
                              setState(() {
                                currentSegment = value!;
                              });
                            },
                            groupValue: currentSegment,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: segmentedBookings[currentSegment]!.length,
                        itemBuilder: (context, index) {
                          return segmentedBookings[currentSegment]!.isNotEmpty
                              ? BlocBuilder<DoctorBloc, DoctorState>(
                                  bloc: _doctorBloc,
                                  builder: (context, state) {
                                    return state.maybeWhen(
                                      loaded: (doctors) {
                                        final sortedBookings =
                                            segmentedBookings[currentSegment]!
                                              ..sort(
                                                (a, b) =>
                                                    a.time.compareTo(b.time),
                                              );
                                        final booking = sortedBookings[index];
                                        return Padding(
                                          padding: EdgeInsets.only(
                                            bottom: 8.h,
                                            right: 16.w,
                                            left: 16.w,
                                          ),
                                          child: GestureDetector(
                                            onTap: () =>
                                                context.router.navigate(
                                              ConsultationRoute(
                                                bookingId: booking.id,
                                              ),
                                            ),
                                            child: ConsultationBox(
                                              doctor: doctors.firstWhere(
                                                (doctor) =>
                                                    doctor.id ==
                                                    booking.doctorId,
                                              ),
                                              plannedDate: booking.time,
                                            ),
                                          ),
                                        );
                                      },
                                      loading: () =>
                                          const CustomLoadingIndicator(),
                                      orElse: () => const SizedBox.shrink(),
                                    );
                                  },
                                )
                              : const SizedBox.shrink();
                        },
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
