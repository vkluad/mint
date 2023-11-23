import 'package:mint/data/gateway/theme_preference.dart';
import 'package:mint/domain/services/theme_notifications_service.dart';

class LocalThemeNotificationPreferences implements ThemeNotificationService {
  LocalThemeNotificationPreferences(this._gateway);

  final PreferencesRepository _gateway;

  @override
  Future<bool> getNotificationsAccess() async {
    return _gateway.getNotificationsAccess();
  }

  @override
  Future<bool> getTheme() async {
    return _gateway.getTheme();
  }

  @override
  Future<void> setTheme({required bool value}) async {
    await _gateway.setTheme(value: value);
  }

  @override
  Future<void> toggleNotifications({required bool value}) async {
    await _gateway.toggleNotifications(value: value);
  }
}
