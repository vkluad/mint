part of 'user_notification_bloc.dart';

@freezed
class UserNotificationState with _$UserNotificationState {
  const factory UserNotificationState.initial() = _Initial;
  const factory UserNotificationState.loaded(
      List<UserNotification> notifications,) = _Loaded;
  const factory UserNotificationState.loading() = _Loading;
  const factory UserNotificationState.error() = _Error;
}
