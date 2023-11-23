import 'package:permission_handler/permission_handler.dart';

class PermissionRepository {
  Future<void> requestChatPermission() async {
    await Permission.microphone.request();
    await Permission.camera.request();
  }

  Future<void> requestNotificationPermission() async {
    await Permission.notification.request();
  }

  Stream<bool> getNotificationPermission() async* {
    final isNotificationGranted =
        await Permission.notification.status.isGranted;
    yield isNotificationGranted;
  }

  Stream<bool> getChatPermission() async* {
    final isMicGranted = await Permission.microphone.status.isGranted;
    final isVidGranted = await Permission.camera.status.isGranted;

    yield isMicGranted && isVidGranted;
  }
}
