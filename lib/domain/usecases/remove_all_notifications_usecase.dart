import 'package:mint/domain/services/user_notifications_service.dart';

abstract class RemoveNotificationsUseCase {
  RemoveNotificationsUseCase();

  Future<void> call();
}

class FirestoreRemoveNotificationsUseCase
    implements RemoveNotificationsUseCase {
  FirestoreRemoveNotificationsUseCase(this.service);
  final UserNotificationsService service;
  @override
  Future<void> call() {
    return service.removeAllNotifications();
  }
}
