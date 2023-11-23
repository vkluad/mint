import 'package:mint/domain/services/theme_notifications_service.dart';

abstract class SetThemeStatusUseCase {
  SetThemeStatusUseCase();

  Future<void> call({required bool isDarkTheme});
}

class LocalSetThemeStatusUseCase implements SetThemeStatusUseCase {
  LocalSetThemeStatusUseCase(this._service);
  final ThemeNotificationService _service;

  @override
  Future<void> call({required bool isDarkTheme}) {
    return _service.setTheme(value: isDarkTheme);
  }
}
