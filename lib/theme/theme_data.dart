import 'package:flutter/material.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class Styles {
  static ThemeData themeData({required bool isDarkTheme}) {
    return ThemeData(
      dividerColor: !isDarkTheme ? Palette.dividerColor : Palette.darkSeparator,
      primaryColor: !isDarkTheme ? Colors.black : Colors.white,
      scaffoldBackgroundColor: !isDarkTheme
          ? Palette.lightPrimaryBackground
          : Palette.darkBasePrimary,
      indicatorColor:
          isDarkTheme ? Palette.darkSecondaryText : Palette.lightSecondary,
      disabledColor:
          isDarkTheme ? Palette.darkDisabledDate : Palette.lightDisabledDate,
      cardColor: isDarkTheme ? Palette.blackSecondary : Colors.white,
      colorScheme: ColorScheme(
        onSecondaryContainer:
            isDarkTheme ? Palette.darkQuarternary : Palette.white,
        onPrimaryContainer:
            !isDarkTheme ? Palette.chipColor : Colors.transparent,
        secondaryContainer:
            isDarkTheme ? Palette.blackSecondary : Palette.lightPinColor,
        primaryContainer:
            isDarkTheme ? Palette.darkChipColor : Palette.chipColor,
        brightness: isDarkTheme ? Brightness.dark : Brightness.light,
        primary: isDarkTheme ? Colors.black : Colors.white,
        onPrimary: isDarkTheme ? Colors.black : Colors.white,
        onTertiaryContainer: isDarkTheme
            ? Palette.darkKeyboardColor
            : Palette.lightKeyboardColor,
        secondary:
            isDarkTheme ? Palette.darkBaseSecondary : Palette.lightSecondary,
        onSecondary:
            isDarkTheme ? Palette.darkBaseSecondary : Palette.lightSecondary,
        error: isDarkTheme ? Palette.darkErrorRed : Palette.whiteErrorRed,
        onError: isDarkTheme ? Palette.darkErrorRed : Palette.whiteErrorRed,
        background: !isDarkTheme
            ? Palette.lightPrimaryBackground
            : Palette.darkBasePrimary,
        onBackground: !isDarkTheme
            ? Palette.lightPrimaryBackground
            : Palette.blackSecondary,
        surface: isDarkTheme ? Palette.darkBasePrimary : Colors.white,
        onSurface: isDarkTheme ? Palette.darkBasePrimary : Colors.white,
        tertiary: !isDarkTheme ? Palette.lightGrey : Palette.darkSeparator,
        tertiaryContainer:
            isDarkTheme ? Palette.darkCardContentColor : Palette.lightTertiary,
      ),
      canvasColor: !isDarkTheme ? Colors.black : Colors.grey[50],
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      unselectedWidgetColor: !isDarkTheme
          ? Palette.lightQuarternary.withOpacity(0.18)
          : Palette.darkQuarternary,
      textTheme: TextTheme(
        displaySmall: TextStyle(
          color:
              !isDarkTheme ? Palette.blackSecondary : Palette.darkTertiaryText,
        ),
        displayMedium: TextStyles.footnote1.copyWith(
          color:
              isDarkTheme ? Palette.darkSecondaryText : Palette.lightSecondary,
        ),
        bodyMedium: TextStyle(
          color: !isDarkTheme
              ? Palette.lightQuarternary
              : Palette.darkSecondaryText,
        ),
        displayLarge: TextStyles.largeTitle.copyWith(
          color: isDarkTheme ? Palette.lightPrimary : Palette.white,
        ),
      ),
    );
  }
}
