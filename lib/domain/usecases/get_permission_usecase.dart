import 'package:mint/domain/services/permission_service.dart';

abstract class GetChatPermissionUseCase {
  GetChatPermissionUseCase();

  Stream<bool> call();
}

class LocalGetPermissionUseCase implements GetChatPermissionUseCase {
  LocalGetPermissionUseCase(this._service);
  final PermissionService _service;

  @override
  Stream<bool> call() {
    return _service.getChatPermission();
  }
}
