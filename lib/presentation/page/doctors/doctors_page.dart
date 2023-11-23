import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/backbone/utils.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/auth/auth_bloc.dart';
import 'package:mint/presentation/bloc/booking/booking_bloc.dart';
import 'package:mint/presentation/bloc/doctors/doctor_bloc.dart';
import 'package:mint/presentation/bloc/user_notification/user_notification_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/cached_image.dart';
import 'package:mint/presentation/widget/doctor_box.dart';
import 'package:mint/presentation/widget/doctor_page_header.dart';
import 'package:mint/presentation/widget/loading_indicator.dart';
import 'package:mint/presentation/widget/selection_button.dart';
import 'package:mint/presentation/widget/upcoming_consultation_box.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

@RoutePage()
class DoctorsPage extends StatefulWidget {
  const DoctorsPage({super.key});

  @override
  State<DoctorsPage> createState() => _DoctorsPageState();
}

class _DoctorsPageState extends State<DoctorsPage> {
  final _doctorBloc = sl<DoctorBloc>();
  final _bookingbloc = sl<BookingBloc>();
  final _authBloc = sl<AuthBloc>();
  final _userNotificationBloc = sl<UserNotificationBloc>();

  @override
  void initState() {
    super.initState();

    _doctorBloc.add(const GetDoctorsEvent());
    _userNotificationBloc.add(const GetNotificationsEvent());
    _bookingbloc.add(const GetBookingsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        title: BlocBuilder<AuthBloc, AuthState>(
          bloc: _authBloc,
          builder: (context, state) {
            return state.maybeWhen(
              authenticated: (user) {
                return Row(
                  children: [
                    SizedBox(
                      height: 30.h,
                      width: 30.w,
                      child: user.image != null
                          ? CachedImage(
                              imageUrl: user.image!,
                            )
                          : Image.asset(Assets.png.missingAvatar.path),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.w),
                      child: Text(
                        '@${user.firstName!}',
                        style: TextStyles.headline1.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        context.router.navigate(const UserNotificationsRoute());
                      },
                      child: BlocBuilder<UserNotificationBloc,
                          UserNotificationState>(
                        bloc: _userNotificationBloc,
                        builder: (context, state) {
                          return state.maybeWhen(
                            loaded: (notifications) {
                              return Stack(
                                children: [
                                  SvgPicture.asset(Assets.svg.notifications),
                                  if (notifications.any(
                                    (notification) =>
                                        notification.isRead == null,
                                  ))
                                    Positioned(
                                      child: CircleAvatar(
                                        radius: 4.r,
                                        backgroundColor:
                                            Palette.notificationAlertColor,
                                      ),
                                    ),
                                ],
                              );
                            },
                            orElse: () => const SizedBox.shrink(),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
      body: Column(
        children: [
          BlocBuilder<BookingBloc, BookingState>(
            bloc: _bookingbloc,
            builder: (context, state) {
              return state.when(
                error: (error) => Center(child: Text(error)),
                loading: () => const CustomLoadingIndicator(),
                initial: () => const SizedBox.shrink(),
                loaded: (bookings) {
                  if (bookings.isNotEmpty) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (bookings.isNotEmpty &&
                            bookings.any(
                              (element) => element.time.isAfter(DateTime.now()),
                            ) &&
                            bookings.any(
                              (element) => !element.isCompleted,
                            )) ...[
                          Padding(
                            padding: EdgeInsets.only(top: 24.h, bottom: 16),
                            child: Text(
                              AppLocalizations.of(context)!.upcomingConsultation,
                              style: TextStyles.headline.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                          BlocBuilder<DoctorBloc, DoctorState>(
                            bloc: _doctorBloc,
                            builder: (context, state) {
                              return state.when(
                                initial: () => const SizedBox.shrink(),
                                error: (error) => Center(child: Text(error)),
                                loading: () => const CustomLoadingIndicator(),
                                loaded: (doctors) {
                                  if (doctors.isNotEmpty) {
                                    final bookingDoctorId = bookings
                                        .firstWhere(
                                          (booking) =>
                                              booking.time.isAfter(
                                                DateTime.now(),
                                              ) &&
                                              !booking.isCompleted,
                                        )
                                        .doctorId;
                                    final doctor = doctors.firstWhere(
                                      (doctor) => doctor.id == bookingDoctorId,
                                    );

                                    return GestureDetector(
                                      onTap: () => context.router.navigate(
                                        ConsultationRoute(
                                          bookingId: bookings
                                              .firstWhere(
                                                (booking) =>
                                                    booking.time.isAfter(
                                                      DateTime.now(),
                                                    ) &&
                                                    !booking.isCompleted,
                                              )
                                              .id,
                                        ),
                                      ),
                                      child: ConsultationBox(
                                        doctor: doctor,
                                        plannedDate: bookings
                                            .firstWhere(
                                              (booking) =>
                                                  booking.time.isAfter(
                                                    DateTime.now(),
                                                  ) &&
                                                  !booking.isCompleted,
                                            )
                                            .time,
                                      ),
                                    );
                                  } else {
                                    return const SizedBox.shrink();
                                  }
                                },
                              );
                            },
                          ),
                        ],
                      ],
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              );
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () =>
                      context.router.navigate(const SpecialistSelectionRoute()),
                  child: SelectionButton(
                    imageAsset: Assets.svg.spec,
                    buttonColor: Palette.mainBlue,
                    text: AppLocalizations.of(context)!.pickupSpecialist,
                    iconHeight: 24.h,
                    iconWidth: 33.w,
                    padding: EdgeInsets.only(left: 12.w, top: 18.h),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                GestureDetector(
                  onTap: () => context.router.navigate(const SymptomRoute()),
                  child: SelectionButton(
                    imageAsset: Assets.svg.symptom,
                    buttonColor: Palette.lightPurple,
                    text: AppLocalizations.of(context)!.chooseSymptom,
                    iconHeight: 33.h,
                    iconWidth: 20.w,
                    padding: EdgeInsets.only(left: 18.w, top: 12.h),
                  ),
                )
              ],
            ),
          ),
          const DoctorPageHeader(),
          Expanded(
            child: SingleChildScrollView(
              child: ColoredBox(
                color: Palette.white,
                child: Column(
                  children: [
                    BlocBuilder<DoctorBloc, DoctorState>(
                      bloc: _doctorBloc,
                      builder: (context, state) {
                        return state.when(
                          initial: SizedBox.shrink,
                          loading: () => const CustomLoadingIndicator(),
                          error: Text.new,
                          loaded: (doctors) => ListView.builder(
                            shrinkWrap: true,
                            physics: const AlwaysScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return doctors[index].isOnline != null &&
                                      doctors[index].isOnline!
                                  ? GestureDetector(
                                      onTap: () {
                                        context.router.navigate(
                                          DoctorDetailsRoute(
                                            doctor: doctors[index],
                                          ),
                                        );
                                      },
                                      child: BlocBuilder<AuthBloc, AuthState>(
                                        bloc: _authBloc,
                                        builder: (context, state) {
                                          return state.maybeWhen(
                                            authenticated: (user) {
                                              final userFavourites =
                                                  user.favourites ?? [];
                                              return DoctorBox(
                                                isFavourite:
                                                    userFavourites.contains(
                                                  doctors[index].id,
                                                ),
                                                callback: () async {
                                                  if (userFavourites.contains(
                                                    doctors[index].id,
                                                  )) {
                                                    await showRemoveFromFavouriteDialog(
                                                      name: doctors[index].name,
                                                      context: context,
                                                      removeCallback: () {
                                                        _doctorBloc.add(
                                                          RemoveFromFavouritesEvent(
                                                            doctors[index].id,
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  } else {
                                                    _doctorBloc.add(
                                                      MarkAsFavouriteEvent(
                                                        doctors[index].id,
                                                      ),
                                                    );
                                                  }
                                                },
                                                doctor: doctors[index],
                                              );
                                            },
                                            orElse: () =>
                                                const SizedBox.shrink(),
                                          );
                                        },
                                      ),
                                    )
                                  : const SizedBox.shrink();
                            },
                            itemCount: doctors.length,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
