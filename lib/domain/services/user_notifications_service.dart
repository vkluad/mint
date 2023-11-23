import 'package:mint/domain/entity/notification.dart';

abstract class UserNotificationsService {
  Future<void> updateNotificationReadStatus(String notificationId);
  Stream<List<UserNotification>> getNotifications();
  Future<void> removeAllNotifications();
}
