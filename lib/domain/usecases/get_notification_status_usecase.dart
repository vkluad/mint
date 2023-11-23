import 'package:mint/domain/services/theme_notifications_service.dart';

abstract class GetNotificationStatusUseCase {
  GetNotificationStatusUseCase();

  Future<bool> call();
}

class LocalGetNotificationStatusUseCase
    implements GetNotificationStatusUseCase {
  LocalGetNotificationStatusUseCase(this._service);
  final ThemeNotificationService _service;

  @override
  Future<bool> call() {
    return _service.getNotificationsAccess();
  }
}
