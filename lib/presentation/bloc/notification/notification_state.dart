part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = _Initial;
  const factory NotificationState.loaded({
    required bool isNotificationAllowed,
  }) = _Loaded;
}
