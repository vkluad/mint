part of 'user_notification_bloc.dart';

@freezed
class UserNotificationEvent with _$UserNotificationEvent {
  const factory UserNotificationEvent.getNotifications() =
      GetNotificationsEvent;
  const factory UserNotificationEvent.createNotification(
    String type,
    String text,
    String notificationId,
  ) = CreateNotificationEvent;
  const factory UserNotificationEvent.removeAllNotifications() =
      RemoveNotificatinsEvent;
  const factory UserNotificationEvent.updateNotificationStatus(
    String notificationId,
  ) = UpdateNotificationStatusEvent;
}
