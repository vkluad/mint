import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/backbone/utils.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/notification/notification_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/back_button.dart';
import 'package:mint/presentation/widget/profile_subpage_header.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

@RoutePage()
class NotificationSettingsPage extends StatefulWidget {
  const NotificationSettingsPage({super.key});

  @override
  State<NotificationSettingsPage> createState() =>
      _NotificationSettingsPageState();
}

class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
  final _notificationBloc = sl<NotificationBloc>();

  @override
  void initState() {
    super.initState();
    _notificationBloc.add(const GetNotificationStatusEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leadingWidth: 75.w,
        leading: CustomBackButton(
          callback: () => context.router.navigate(const ProfileRoute()),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileSubpageHeader(
              text: AppLocalizations.of(context)!.inAppNotifications,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.all(Radius.circular(8.r)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.getNotifications,
                    style: TextStyles.body.copyWith(
                      fontSize: 16.sp,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  BlocBuilder<NotificationBloc, NotificationState>(
                    bloc: _notificationBloc,
                    builder: (context, state) {
                      return state.when(
                        initial: () => const SizedBox.shrink(),
                        loaded: (isNotificationAllowed) {
                          return Switch.adaptive(
                            activeColor: Palette.mainBlue,
                            value: isNotificationAllowed,
                            onChanged: (value) async {
                              _notificationBloc.add(
                                SetNotificationStatusEvent(
                                  isNotificationAllowed: !isNotificationAllowed,
                                ),
                              );
                              if (!value) {
                                showNotificationStatusToast(context);
                              }
                            },
                          );
                        },
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
