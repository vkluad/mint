import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/backbone/utils.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/doctors/doctor_bloc.dart';
import 'package:mint/presentation/bloc/user_notification/user_notification_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/back_button.dart';
import 'package:mint/presentation/widget/empty_notifications_placeholder.dart';
import 'package:mint/presentation/widget/loading_indicator.dart';
import 'package:mint/presentation/widget/notification_card.dart';
import 'package:mint/theme/text_styles.dart';

@RoutePage()
class UserNotificationsPage extends StatefulWidget {
  const UserNotificationsPage({super.key});

  @override
  State<UserNotificationsPage> createState() => _UserNotificationsPageState();
}

class _UserNotificationsPageState extends State<UserNotificationsPage> {
  final _bloc = sl<UserNotificationBloc>();
  final _doctorBloc = sl<DoctorBloc>();

  @override
  void initState() {
    super.initState();
    _bloc.add(const GetNotificationsEvent());
    _doctorBloc.add(const GetDoctorsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)!.notifications,
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        leading: const CustomBackButton(),
        leadingWidth: 75.w,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w, top: 20.h),
            child: GestureDetector(
              onTap: () {
                _bloc.add(const RemoveNotificatinsEvent());
              },
              child: Text(
                AppLocalizations.of(context)!.clear,
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<UserNotificationBloc, UserNotificationState>(
          bloc: _bloc,
          builder: (context, state) {
            return state.maybeWhen(
              loaded: (notifications) {
                for (final notification in notifications) {
                  _bloc.add(UpdateNotificationStatusEvent(notification.id));
                }
                if (notifications.isEmpty) {
                  return const EmptyNotificationPlaceholder();
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: GroupedListView(
                      elements: notifications,
                      groupBy: (notification) {
                        return boolToInt(
                          isToday: notification.timeSent.isToday,
                        );
                      },
                      itemComparator: (element1, element2) {
                        return element1.timeSent.isBefore(element2.timeSent)
                            ? 0
                            : 1;
                      },
                      order: GroupedListOrder.DESC,
                      stickyHeaderBackgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      groupHeaderBuilder: (notification) {
                        return Padding(
                          padding: EdgeInsets.only(
                            bottom: 16.h,
                            top: notification.timeSent.isToday ? 0.h : 16.h,
                          ),
                          child: Text(
                            notification.timeSent.isToday
                                ? AppLocalizations.of(context)!.today('')
                                : AppLocalizations.of(context)!.previous,
                            style: TextStyles.headline1.copyWith(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        );
                      },
                      indexedItemBuilder: (context, notification, index) {
                        return GestureDetector(
                          onTap: () {
                            if (notification.type == 'chat') {
                              context.router.navigate(
                                ChatRoute(doctorId: notification.navigationId),
                              );
                            } else if (notification.type == 'booking') {
                              context.router.navigate(
                                ConsultationRoute(
                                  bookingId: notification.navigationId,
                                ),
                              );
                            }
                          },
                          child: BlocBuilder<DoctorBloc, DoctorState>(
                            bloc: _doctorBloc,
                            builder: (context, state) {
                              return state.maybeWhen(
                                loaded: (doctors) {
                                  Doctor? selectedDoctor;
                                  if (notification.type == 'chat') {
                                    selectedDoctor = doctors.firstWhere(
                                      (doctor) =>
                                          doctor.id ==
                                          notification.navigationId,
                                    );
                                  }

                                  return NotificationCard(
                                    key: UniqueKey(),
                                    notification: notification,
                                    doctorImageUrl: selectedDoctor?.image,
                                  );
                                },
                                loading: () => const CustomLoadingIndicator(),
                                orElse: () => const SizedBox.shrink(),
                              );
                            },
                          ),
                        );
                      },
                      useStickyGroupSeparators: true,
                    ),
                  );
                }
              },
              loading: () => const CustomLoadingIndicator(),
              orElse: () => const SizedBox.shrink(),
            );
          },
        ),
      ),
    );
  }
}
