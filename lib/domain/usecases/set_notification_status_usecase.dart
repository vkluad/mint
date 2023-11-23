import 'package:mint/domain/services/theme_notifications_service.dart';

abstract class SetNotificationStatusUseCase {
  SetNotificationStatusUseCase();

  Future<void> call({required bool isNotificationAllowed});
}

class LocalSetNotificationStatusUseCase
    implements SetNotificationStatusUseCase {
  LocalSetNotificationStatusUseCase(this._service);
  final ThemeNotificationService _service;

  @override
  Future<void> call({required bool isNotificationAllowed}) {
    return _service.toggleNotifications(value: isNotificationAllowed);
  }
}
