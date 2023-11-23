abstract class PermissionService {
  Future<void> requestChatPermission();
  Future<void> requestNotificationPermission();
  Stream<bool> getNotificationPermission();
  Stream<bool> getChatPermission();
}
