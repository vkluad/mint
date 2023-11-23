import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint/domain/entity/notification.dart';

import 'package:mint/domain/usecases/get_user_notifications_usecase.dart';
import 'package:mint/domain/usecases/remove_all_notifications_usecase.dart';
import 'package:mint/domain/usecases/update_user_notification_status_usecase.dart';

part 'user_notification_event.dart';
part 'user_notification_state.dart';
part 'user_notification_bloc.freezed.dart';

class UserNotificationBloc
    extends Bloc<UserNotificationEvent, UserNotificationState> {
  UserNotificationBloc(
    this._getUserNotificationsUseCase,
    this._updateUserNotificationStatusUseCase,
    this._removeNotificationsUseCase,
  ) : super(const _Initial()) {
    on<UserNotificationEvent>((event, emit) async {
      await event.when(
        getNotifications: () async {
          await _getNotifications(emit);
        },
        createNotification: (
          type,
          text,
          notificationId,
        ) async {},
        updateNotificationStatus: (notificationId) async {
          await _updateNotificationReadStatus(notificationId);
        },
        removeAllNotifications: () async {
          await _removeAllNotifications();
        },
      );
    });
  }

  final UpdateUserNotificationStatusUseCase
      _updateUserNotificationStatusUseCase;
  final GetUserNotificationsUseCase _getUserNotificationsUseCase;
  final RemoveNotificationsUseCase _removeNotificationsUseCase;

  Future<void> _removeAllNotifications() async {
    await _removeNotificationsUseCase.call();
  }

  Future<void> _updateNotificationReadStatus(String notificationId) async {
    await _updateUserNotificationStatusUseCase.call(notificationId);
  }

  Future<void> _getNotifications(Emitter<UserNotificationState> emit) async {
    await emit.forEach(
      _getUserNotificationsUseCase.call(),
      onData: (notifications) {
        return _Loaded(notifications);
      },
    );
  }
}
