import 'package:mint/domain/services/user_notifications_service.dart';

abstract class UpdateUserNotificationStatusUseCase {
  UpdateUserNotificationStatusUseCase();

  Future<void> call(
    String notificationId,
  );
}

class FirestoreUpdateUserNotificationStatusUseCase
    implements UpdateUserNotificationStatusUseCase {
  FirestoreUpdateUserNotificationStatusUseCase(this.service);
  final UserNotificationsService service;
  @override
  Future<void> call(
    String notificationId,
  ) async {
    await service.updateNotificationReadStatus(notificationId);
  }
}
