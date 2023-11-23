import 'package:mint/data/gateway/permission_repository.dart';
import 'package:mint/domain/services/permission_service.dart';

class LocalPermissionService implements PermissionService {
  LocalPermissionService(this._gateway);

  final PermissionRepository _gateway;

  @override
  Stream<bool> getChatPermission() async* {
    yield* _gateway.getChatPermission();
  }

  @override
  Future<void> requestChatPermission() async {
    await _gateway.requestChatPermission();
  }

  @override
  Stream<bool> getNotificationPermission() async* {
    yield* _gateway.getNotificationPermission();
  }

  @override
  Future<void> requestNotificationPermission() async {
    await _gateway.requestNotificationPermission();
  }
}
