import 'package:mint/data/gateway/firebase_notification_gateway.dart';
import 'package:mint/domain/entity/notification.dart';
import 'package:mint/domain/services/user_notifications_service.dart';

class FirebaseUserNotificationsService implements UserNotificationsService {
  FirebaseUserNotificationsService(this._gateway);

  final FirebaseNotificationGateway _gateway;

  @override
  Stream<List<UserNotification>> getNotifications() {
    return _gateway.getNotifications();
  }

  @override
  Future<void> updateNotificationReadStatus(String notificationId) async {
    await _gateway.updateNotificationReadStatus(notificationId);
  }

  @override
  Future<void> removeAllNotifications() async {
    await _gateway.removeAllNotifications();
  }
}
