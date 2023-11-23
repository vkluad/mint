import 'package:mint/domain/services/permission_service.dart';

abstract class RequestNotificationPermissionUseCase {
  RequestNotificationPermissionUseCase();

  Future<void> call();
}

class LocalRequestNotificationUseCase
    implements RequestNotificationPermissionUseCase {
  LocalRequestNotificationUseCase(this._service);
  final PermissionService _service;

  @override
  Future<void> call() async {
    await _service.requestNotificationPermission();
  }
}
