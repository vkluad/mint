import 'package:mint/domain/services/permission_service.dart';

abstract class RequestChatPermissionUseCase {
  RequestChatPermissionUseCase();

  Future<void> call();
}

class LocalRequestPermissionUseCase implements RequestChatPermissionUseCase {
  LocalRequestPermissionUseCase(this._service);
  final PermissionService _service;

  @override
  Future<void> call() async {
    return _service.requestChatPermission();
  }
}
