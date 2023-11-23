import 'package:mint/domain/services/theme_notifications_service.dart';

abstract class GetThemeStatusUseCase {
  GetThemeStatusUseCase();

  Future<bool> call();
}

class LocalGetThemeStatusUseCase implements GetThemeStatusUseCase {
  LocalGetThemeStatusUseCase(this._service);
  final ThemeNotificationService _service;

  @override
  Future<bool> call() {
    return _service.getTheme();
  }
}
