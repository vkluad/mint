part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.setDarkTheme({required bool isDark}) =
      SetDarkThemeEvent;
  const factory ThemeEvent.getTheme() = GetThemeEvent;
}
