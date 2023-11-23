// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotificationStatus,
    required TResult Function(bool isNotificationAllowed) setNotificationStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotificationStatus,
    TResult? Function(bool isNotificationAllowed)? setNotificationStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotificationStatus,
    TResult Function(bool isNotificationAllowed)? setNotificationStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotificationStatusEvent value)
        getNotificationStatus,
    required TResult Function(SetNotificationStatusEvent value)
        setNotificationStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotificationStatusEvent value)? getNotificationStatus,
    TResult? Function(SetNotificationStatusEvent value)? setNotificationStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotificationStatusEvent value)? getNotificationStatus,
    TResult Function(SetNotificationStatusEvent value)? setNotificationStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetNotificationStatusEventImplCopyWith<$Res> {
  factory _$$GetNotificationStatusEventImplCopyWith(
          _$GetNotificationStatusEventImpl value,
          $Res Function(_$GetNotificationStatusEventImpl) then) =
      __$$GetNotificationStatusEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNotificationStatusEventImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res,
        _$GetNotificationStatusEventImpl>
    implements _$$GetNotificationStatusEventImplCopyWith<$Res> {
  __$$GetNotificationStatusEventImplCopyWithImpl(
      _$GetNotificationStatusEventImpl _value,
      $Res Function(_$GetNotificationStatusEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetNotificationStatusEventImpl implements GetNotificationStatusEvent {
  const _$GetNotificationStatusEventImpl();

  @override
  String toString() {
    return 'NotificationEvent.getNotificationStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationStatusEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotificationStatus,
    required TResult Function(bool isNotificationAllowed) setNotificationStatus,
  }) {
    return getNotificationStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotificationStatus,
    TResult? Function(bool isNotificationAllowed)? setNotificationStatus,
  }) {
    return getNotificationStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotificationStatus,
    TResult Function(bool isNotificationAllowed)? setNotificationStatus,
    required TResult orElse(),
  }) {
    if (getNotificationStatus != null) {
      return getNotificationStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotificationStatusEvent value)
        getNotificationStatus,
    required TResult Function(SetNotificationStatusEvent value)
        setNotificationStatus,
  }) {
    return getNotificationStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotificationStatusEvent value)? getNotificationStatus,
    TResult? Function(SetNotificationStatusEvent value)? setNotificationStatus,
  }) {
    return getNotificationStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotificationStatusEvent value)? getNotificationStatus,
    TResult Function(SetNotificationStatusEvent value)? setNotificationStatus,
    required TResult orElse(),
  }) {
    if (getNotificationStatus != null) {
      return getNotificationStatus(this);
    }
    return orElse();
  }
}

abstract class GetNotificationStatusEvent implements NotificationEvent {
  const factory GetNotificationStatusEvent() = _$GetNotificationStatusEventImpl;
}

/// @nodoc
abstract class _$$SetNotificationStatusEventImplCopyWith<$Res> {
  factory _$$SetNotificationStatusEventImplCopyWith(
          _$SetNotificationStatusEventImpl value,
          $Res Function(_$SetNotificationStatusEventImpl) then) =
      __$$SetNotificationStatusEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isNotificationAllowed});
}

/// @nodoc
class __$$SetNotificationStatusEventImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res,
        _$SetNotificationStatusEventImpl>
    implements _$$SetNotificationStatusEventImplCopyWith<$Res> {
  __$$SetNotificationStatusEventImplCopyWithImpl(
      _$SetNotificationStatusEventImpl _value,
      $Res Function(_$SetNotificationStatusEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNotificationAllowed = null,
  }) {
    return _then(_$SetNotificationStatusEventImpl(
      isNotificationAllowed: null == isNotificationAllowed
          ? _value.isNotificationAllowed
          : isNotificationAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetNotificationStatusEventImpl implements SetNotificationStatusEvent {
  const _$SetNotificationStatusEventImpl({required this.isNotificationAllowed});

  @override
  final bool isNotificationAllowed;

  @override
  String toString() {
    return 'NotificationEvent.setNotificationStatus(isNotificationAllowed: $isNotificationAllowed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetNotificationStatusEventImpl &&
            (identical(other.isNotificationAllowed, isNotificationAllowed) ||
                other.isNotificationAllowed == isNotificationAllowed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isNotificationAllowed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetNotificationStatusEventImplCopyWith<_$SetNotificationStatusEventImpl>
      get copyWith => __$$SetNotificationStatusEventImplCopyWithImpl<
          _$SetNotificationStatusEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotificationStatus,
    required TResult Function(bool isNotificationAllowed) setNotificationStatus,
  }) {
    return setNotificationStatus(isNotificationAllowed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotificationStatus,
    TResult? Function(bool isNotificationAllowed)? setNotificationStatus,
  }) {
    return setNotificationStatus?.call(isNotificationAllowed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotificationStatus,
    TResult Function(bool isNotificationAllowed)? setNotificationStatus,
    required TResult orElse(),
  }) {
    if (setNotificationStatus != null) {
      return setNotificationStatus(isNotificationAllowed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotificationStatusEvent value)
        getNotificationStatus,
    required TResult Function(SetNotificationStatusEvent value)
        setNotificationStatus,
  }) {
    return setNotificationStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotificationStatusEvent value)? getNotificationStatus,
    TResult? Function(SetNotificationStatusEvent value)? setNotificationStatus,
  }) {
    return setNotificationStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotificationStatusEvent value)? getNotificationStatus,
    TResult Function(SetNotificationStatusEvent value)? setNotificationStatus,
    required TResult orElse(),
  }) {
    if (setNotificationStatus != null) {
      return setNotificationStatus(this);
    }
    return orElse();
  }
}

abstract class SetNotificationStatusEvent implements NotificationEvent {
  const factory SetNotificationStatusEvent(
          {required final bool isNotificationAllowed}) =
      _$SetNotificationStatusEventImpl;

  bool get isNotificationAllowed;
  @JsonKey(ignore: true)
  _$$SetNotificationStatusEventImplCopyWith<_$SetNotificationStatusEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isNotificationAllowed) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isNotificationAllowed)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isNotificationAllowed)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

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
    extends _$NotificationStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'NotificationState.initial()';
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
    required TResult Function(bool isNotificationAllowed) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isNotificationAllowed)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isNotificationAllowed)? loaded,
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
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotificationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isNotificationAllowed});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNotificationAllowed = null,
  }) {
    return _then(_$LoadedImpl(
      isNotificationAllowed: null == isNotificationAllowed
          ? _value.isNotificationAllowed
          : isNotificationAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.isNotificationAllowed});

  @override
  final bool isNotificationAllowed;

  @override
  String toString() {
    return 'NotificationState.loaded(isNotificationAllowed: $isNotificationAllowed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.isNotificationAllowed, isNotificationAllowed) ||
                other.isNotificationAllowed == isNotificationAllowed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isNotificationAllowed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isNotificationAllowed) loaded,
  }) {
    return loaded(isNotificationAllowed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isNotificationAllowed)? loaded,
  }) {
    return loaded?.call(isNotificationAllowed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isNotificationAllowed)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(isNotificationAllowed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements NotificationState {
  const factory _Loaded({required final bool isNotificationAllowed}) =
      _$LoadedImpl;

  bool get isNotificationAllowed;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
