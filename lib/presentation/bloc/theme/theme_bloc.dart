import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint/domain/usecases/get_theme_status_usecase.dart';
import 'package:mint/domain/usecases/set_theme_status_usecase.dart';
import 'package:mint/theme/theme_data.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc(this._getThemeStatusUseCase, this._setThemeStatusUseCase)
      : super(const _Initial()) {
    on<ThemeEvent>((event, emit) async {
      await event.when(
        setDarkTheme: (isDark) async {
          await setDarkTheme(emit, isDarkTheme: isDark);
        },
        getTheme: () async {
          await applyTheme(emit);
        },
      );
    });
  }
  final GetThemeStatusUseCase _getThemeStatusUseCase;
  final SetThemeStatusUseCase _setThemeStatusUseCase;

  Future<void> setDarkTheme(
    Emitter<ThemeState> emit, {
    required bool isDarkTheme,
  }) async {
    await _setThemeStatusUseCase.call(isDarkTheme: isDarkTheme);
    emit(AppTheme(
        themeData: Styles.themeData(isDarkTheme: isDarkTheme),
        isDarkTheme: isDarkTheme,),);
  }

  Future<void> applyTheme(Emitter<ThemeState> emit) async {
    final isDarkTheme = await _getThemeStatusUseCase.call();

    emit(AppTheme(
        themeData: Styles.themeData(isDarkTheme: isDarkTheme),
        isDarkTheme: isDarkTheme,),);
  }
}
