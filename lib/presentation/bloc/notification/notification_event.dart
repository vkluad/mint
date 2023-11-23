part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.getNotificationStatus() =
      GetNotificationStatusEvent;
  const factory NotificationEvent.setNotificationStatus(
      {required bool isNotificationAllowed,}) = SetNotificationStatusEvent;
}
