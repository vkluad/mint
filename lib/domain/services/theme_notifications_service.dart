abstract class ThemeNotificationService {
  Future<void> setTheme({required bool value});
  Future<bool> getTheme();
  Future<void> toggleNotifications({required bool value});
  Future<bool> getNotificationsAccess();
}
