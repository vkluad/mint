import 'package:mint/domain/entity/notification.dart';
import 'package:mint/domain/services/user_notifications_service.dart';

abstract class GetUserNotificationsUseCase {
  GetUserNotificationsUseCase();

  Stream<List<UserNotification>> call();
}

class FirestoreGetUserNotificationsUseCase
    implements GetUserNotificationsUseCase {
  FirestoreGetUserNotificationsUseCase(this.service);
  final UserNotificationsService service;
  @override
  Stream<List<UserNotification>> call() {
    return service.getNotifications();
  }
}
