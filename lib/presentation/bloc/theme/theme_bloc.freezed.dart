// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDark) setDarkTheme,
    required TResult Function() getTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDark)? setDarkTheme,
    TResult? Function()? getTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDark)? setDarkTheme,
    TResult Function()? getTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetDarkThemeEvent value) setDarkTheme,
    required TResult Function(GetThemeEvent value) getTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetDarkThemeEvent value)? setDarkTheme,
    TResult? Function(GetThemeEvent value)? getTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetDarkThemeEvent value)? setDarkTheme,
    TResult Function(GetThemeEvent value)? getTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetDarkThemeEventImplCopyWith<$Res> {
  factory _$$SetDarkThemeEventImplCopyWith(_$SetDarkThemeEventImpl value,
          $Res Function(_$SetDarkThemeEventImpl) then) =
      __$$SetDarkThemeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDark});
}

/// @nodoc
class __$$SetDarkThemeEventImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$SetDarkThemeEventImpl>
    implements _$$SetDarkThemeEventImplCopyWith<$Res> {
  __$$SetDarkThemeEventImplCopyWithImpl(_$SetDarkThemeEventImpl _value,
      $Res Function(_$SetDarkThemeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDark = null,
  }) {
    return _then(_$SetDarkThemeEventImpl(
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetDarkThemeEventImpl implements SetDarkThemeEvent {
  const _$SetDarkThemeEventImpl({required this.isDark});

  @override
  final bool isDark;

  @override
  String toString() {
    return 'ThemeEvent.setDarkTheme(isDark: $isDark)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetDarkThemeEventImpl &&
            (identical(other.isDark, isDark) || other.isDark == isDark));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetDarkThemeEventImplCopyWith<_$SetDarkThemeEventImpl> get copyWith =>
      __$$SetDarkThemeEventImplCopyWithImpl<_$SetDarkThemeEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDark) setDarkTheme,
    required TResult Function() getTheme,
  }) {
    return setDarkTheme(isDark);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDark)? setDarkTheme,
    TResult? Function()? getTheme,
  }) {
    return setDarkTheme?.call(isDark);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDark)? setDarkTheme,
    TResult Function()? getTheme,
    required TResult orElse(),
  }) {
    if (setDarkTheme != null) {
      return setDarkTheme(isDark);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetDarkThemeEvent value) setDarkTheme,
    required TResult Function(GetThemeEvent value) getTheme,
  }) {
    return setDarkTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetDarkThemeEvent value)? setDarkTheme,
    TResult? Function(GetThemeEvent value)? getTheme,
  }) {
    return setDarkTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetDarkThemeEvent value)? setDarkTheme,
    TResult Function(GetThemeEvent value)? getTheme,
    required TResult orElse(),
  }) {
    if (setDarkTheme != null) {
      return setDarkTheme(this);
    }
    return orElse();
  }
}

abstract class SetDarkThemeEvent implements ThemeEvent {
  const factory SetDarkThemeEvent({required final bool isDark}) =
      _$SetDarkThemeEventImpl;

  bool get isDark;
  @JsonKey(ignore: true)
  _$$SetDarkThemeEventImplCopyWith<_$SetDarkThemeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetThemeEventImplCopyWith<$Res> {
  factory _$$GetThemeEventImplCopyWith(
          _$GetThemeEventImpl value, $Res Function(_$GetThemeEventImpl) then) =
      __$$GetThemeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetThemeEventImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$GetThemeEventImpl>
    implements _$$GetThemeEventImplCopyWith<$Res> {
  __$$GetThemeEventImplCopyWithImpl(
      _$GetThemeEventImpl _value, $Res Function(_$GetThemeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetThemeEventImpl implements GetThemeEvent {
  const _$GetThemeEventImpl();

  @override
  String toString() {
    return 'ThemeEvent.getTheme()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetThemeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isDark) setDarkTheme,
    required TResult Function() getTheme,
  }) {
    return getTheme();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isDark)? setDarkTheme,
    TResult? Function()? getTheme,
  }) {
    return getTheme?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isDark)? setDarkTheme,
    TResult Function()? getTheme,
    required TResult orElse(),
  }) {
    if (getTheme != null) {
      return getTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetDarkThemeEvent value) setDarkTheme,
    required TResult Function(GetThemeEvent value) getTheme,
  }) {
    return getTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetDarkThemeEvent value)? setDarkTheme,
    TResult? Function(GetThemeEvent value)? getTheme,
  }) {
    return getTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetDarkThemeEvent value)? setDarkTheme,
    TResult Function(GetThemeEvent value)? getTheme,
    required TResult orElse(),
  }) {
    if (getTheme != null) {
      return getTheme(this);
    }
    return orElse();
  }
}

abstract class GetThemeEvent implements ThemeEvent {
  const factory GetThemeEvent() = _$GetThemeEventImpl;
}

/// @nodoc
mixin _$ThemeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDarkTheme, ThemeData themeData) appTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDarkTheme, ThemeData themeData)? appTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDarkTheme, ThemeData themeData)? appTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AppTheme value) appTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AppTheme value)? appTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AppTheme value)? appTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ThemeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDarkTheme, ThemeData themeData) appTheme,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDarkTheme, ThemeData themeData)? appTheme,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDarkTheme, ThemeData themeData)? appTheme,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AppTheme value) appTheme,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AppTheme value)? appTheme,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AppTheme value)? appTheme,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ThemeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AppThemeImplCopyWith<$Res> {
  factory _$$AppThemeImplCopyWith(
          _$AppThemeImpl value, $Res Function(_$AppThemeImpl) then) =
      __$$AppThemeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDarkTheme, ThemeData themeData});
}

/// @nodoc
class __$$AppThemeImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$AppThemeImpl>
    implements _$$AppThemeImplCopyWith<$Res> {
  __$$AppThemeImplCopyWithImpl(
      _$AppThemeImpl _value, $Res Function(_$AppThemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkTheme = null,
    Object? themeData = null,
  }) {
    return _then(_$AppThemeImpl(
      isDarkTheme: null == isDarkTheme
          ? _value.isDarkTheme
          : isDarkTheme // ignore: cast_nullable_to_non_nullable
              as bool,
      themeData: null == themeData
          ? _value.themeData
          : themeData // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// @nodoc

class _$AppThemeImpl implements AppTheme {
  const _$AppThemeImpl({required this.isDarkTheme, required this.themeData});

  @override
  final bool isDarkTheme;
  @override
  final ThemeData themeData;

  @override
  String toString() {
    return 'ThemeState.appTheme(isDarkTheme: $isDarkTheme, themeData: $themeData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppThemeImpl &&
            (identical(other.isDarkTheme, isDarkTheme) ||
                other.isDarkTheme == isDarkTheme) &&
            (identical(other.themeData, themeData) ||
                other.themeData == themeData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isDarkTheme, themeData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppThemeImplCopyWith<_$AppThemeImpl> get copyWith =>
      __$$AppThemeImplCopyWithImpl<_$AppThemeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isDarkTheme, ThemeData themeData) appTheme,
  }) {
    return appTheme(isDarkTheme, themeData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isDarkTheme, ThemeData themeData)? appTheme,
  }) {
    return appTheme?.call(isDarkTheme, themeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isDarkTheme, ThemeData themeData)? appTheme,
    required TResult orElse(),
  }) {
    if (appTheme != null) {
      return appTheme(isDarkTheme, themeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(AppTheme value) appTheme,
  }) {
    return appTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(AppTheme value)? appTheme,
  }) {
    return appTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(AppTheme value)? appTheme,
    required TResult orElse(),
  }) {
    if (appTheme != null) {
      return appTheme(this);
    }
    return orElse();
  }
}

abstract class AppTheme implements ThemeState {
  const factory AppTheme(
      {required final bool isDarkTheme,
      required final ThemeData themeData}) = _$AppThemeImpl;

  bool get isDarkTheme;
  ThemeData get themeData;
  @JsonKey(ignore: true)
  _$$AppThemeImplCopyWith<_$AppThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
