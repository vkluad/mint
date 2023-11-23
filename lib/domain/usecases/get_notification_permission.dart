import 'package:mint/domain/services/permission_service.dart';

abstract class GetNotificationPermissionUseCase {
  GetNotificationPermissionUseCase();

  Stream<bool> call();
}

class LocalGetNotificationUseCase implements GetNotificationPermissionUseCase {
  LocalGetNotificationUseCase(this._service);
  final PermissionService _service;

  @override
  Stream<bool> call() {
    return _service.getNotificationPermission();
  }
}
