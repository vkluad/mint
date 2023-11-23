import 'package:shared_preferences/shared_preferences.dart';

class PreferencesRepository {
  SharedPreferences? prefs;
  static const themeStatus = 'isDark';
  static const notificationStatus = 'isNotificationAllowed';

  Future<void> setTheme({required bool value}) async {
    prefs = await SharedPreferences.getInstance();
    await prefs?.setBool(themeStatus, value);
  }

  Future<bool> getTheme() async {
    prefs = await SharedPreferences.getInstance();
    return prefs?.getBool(themeStatus) ?? false;
  }

  Future<void> toggleNotifications({required bool value}) async {
    prefs = await SharedPreferences.getInstance();
    await prefs?.setBool(notificationStatus, value);
  }

  Future<bool> getNotificationsAccess() async {
    prefs = await SharedPreferences.getInstance();
    return prefs?.getBool(notificationStatus) ?? true;
  }
}
