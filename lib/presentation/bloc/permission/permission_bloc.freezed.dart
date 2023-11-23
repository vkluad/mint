// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PermissionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestChatPermission,
    required TResult Function() requestNotificationPermission,
    required TResult Function() getChatPermission,
    required TResult Function() getNotificationPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestChatPermission,
    TResult? Function()? requestNotificationPermission,
    TResult? Function()? getChatPermission,
    TResult? Function()? getNotificationPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestChatPermission,
    TResult Function()? requestNotificationPermission,
    TResult Function()? getChatPermission,
    TResult Function()? getNotificationPermission,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestChatPermissionEvent value)
        requestChatPermission,
    required TResult Function(RequestNotificationPermissionEvent value)
        requestNotificationPermission,
    required TResult Function(GetChatPermissionEvent value) getChatPermission,
    required TResult Function(GetNotificationPermissionEvent value)
        getNotificationPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestChatPermissionEvent value)? requestChatPermission,
    TResult? Function(RequestNotificationPermissionEvent value)?
        requestNotificationPermission,
    TResult? Function(GetChatPermissionEvent value)? getChatPermission,
    TResult? Function(GetNotificationPermissionEvent value)?
        getNotificationPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestChatPermissionEvent value)? requestChatPermission,
    TResult Function(RequestNotificationPermissionEvent value)?
        requestNotificationPermission,
    TResult Function(GetChatPermissionEvent value)? getChatPermission,
    TResult Function(GetNotificationPermissionEvent value)?
        getNotificationPermission,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionEventCopyWith<$Res> {
  factory $PermissionEventCopyWith(
          PermissionEvent value, $Res Function(PermissionEvent) then) =
      _$PermissionEventCopyWithImpl<$Res, PermissionEvent>;
}

/// @nodoc
class _$PermissionEventCopyWithImpl<$Res, $Val extends PermissionEvent>
    implements $PermissionEventCopyWith<$Res> {
  _$PermissionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RequestChatPermissionEventImplCopyWith<$Res> {
  factory _$$RequestChatPermissionEventImplCopyWith(
          _$RequestChatPermissionEventImpl value,
          $Res Function(_$RequestChatPermissionEventImpl) then) =
      __$$RequestChatPermissionEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestChatPermissionEventImplCopyWithImpl<$Res>
    extends _$PermissionEventCopyWithImpl<$Res,
        _$RequestChatPermissionEventImpl>
    implements _$$RequestChatPermissionEventImplCopyWith<$Res> {
  __$$RequestChatPermissionEventImplCopyWithImpl(
      _$RequestChatPermissionEventImpl _value,
      $Res Function(_$RequestChatPermissionEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestChatPermissionEventImpl implements RequestChatPermissionEvent {
  const _$RequestChatPermissionEventImpl();

  @override
  String toString() {
    return 'PermissionEvent.requestChatPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestChatPermissionEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestChatPermission,
    required TResult Function() requestNotificationPermission,
    required TResult Function() getChatPermission,
    required TResult Function() getNotificationPermission,
  }) {
    return requestChatPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestChatPermission,
    TResult? Function()? requestNotificationPermission,
    TResult? Function()? getChatPermission,
    TResult? Function()? getNotificationPermission,
  }) {
    return requestChatPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestChatPermission,
    TResult Function()? requestNotificationPermission,
    TResult Function()? getChatPermission,
    TResult Function()? getNotificationPermission,
    required TResult orElse(),
  }) {
    if (requestChatPermission != null) {
      return requestChatPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestChatPermissionEvent value)
        requestChatPermission,
    required TResult Function(RequestNotificationPermissionEvent value)
        requestNotificationPermission,
    required TResult Function(GetChatPermissionEvent value) getChatPermission,
    required TResult Function(GetNotificationPermissionEvent value)
        getNotificationPermission,
  }) {
    return requestChatPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestChatPermissionEvent value)? requestChatPermission,
    TResult? Function(RequestNotificationPermissionEvent value)?
        requestNotificationPermission,
    TResult? Function(GetChatPermissionEvent value)? getChatPermission,
    TResult? Function(GetNotificationPermissionEvent value)?
        getNotificationPermission,
  }) {
    return requestChatPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestChatPermissionEvent value)? requestChatPermission,
    TResult Function(RequestNotificationPermissionEvent value)?
        requestNotificationPermission,
    TResult Function(GetChatPermissionEvent value)? getChatPermission,
    TResult Function(GetNotificationPermissionEvent value)?
        getNotificationPermission,
    required TResult orElse(),
  }) {
    if (requestChatPermission != null) {
      return requestChatPermission(this);
    }
    return orElse();
  }
}

abstract class RequestChatPermissionEvent implements PermissionEvent {
  const factory RequestChatPermissionEvent() = _$RequestChatPermissionEventImpl;
}

/// @nodoc
abstract class _$$RequestNotificationPermissionEventImplCopyWith<$Res> {
  factory _$$RequestNotificationPermissionEventImplCopyWith(
          _$RequestNotificationPermissionEventImpl value,
          $Res Function(_$RequestNotificationPermissionEventImpl) then) =
      __$$RequestNotificationPermissionEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestNotificationPermissionEventImplCopyWithImpl<$Res>
    extends _$PermissionEventCopyWithImpl<$Res,
        _$RequestNotificationPermissionEventImpl>
    implements _$$RequestNotificationPermissionEventImplCopyWith<$Res> {
  __$$RequestNotificationPermissionEventImplCopyWithImpl(
      _$RequestNotificationPermissionEventImpl _value,
      $Res Function(_$RequestNotificationPermissionEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestNotificationPermissionEventImpl
    implements RequestNotificationPermissionEvent {
  const _$RequestNotificationPermissionEventImpl();

  @override
  String toString() {
    return 'PermissionEvent.requestNotificationPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestNotificationPermissionEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestChatPermission,
    required TResult Function() requestNotificationPermission,
    required TResult Function() getChatPermission,
    required TResult Function() getNotificationPermission,
  }) {
    return requestNotificationPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestChatPermission,
    TResult? Function()? requestNotificationPermission,
    TResult? Function()? getChatPermission,
    TResult? Function()? getNotificationPermission,
  }) {
    return requestNotificationPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestChatPermission,
    TResult Function()? requestNotificationPermission,
    TResult Function()? getChatPermission,
    TResult Function()? getNotificationPermission,
    required TResult orElse(),
  }) {
    if (requestNotificationPermission != null) {
      return requestNotificationPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestChatPermissionEvent value)
        requestChatPermission,
    required TResult Function(RequestNotificationPermissionEvent value)
        requestNotificationPermission,
    required TResult Function(GetChatPermissionEvent value) getChatPermission,
    required TResult Function(GetNotificationPermissionEvent value)
        getNotificationPermission,
  }) {
    return requestNotificationPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestChatPermissionEvent value)? requestChatPermission,
    TResult? Function(RequestNotificationPermissionEvent value)?
        requestNotificationPermission,
    TResult? Function(GetChatPermissionEvent value)? getChatPermission,
    TResult? Function(GetNotificationPermissionEvent value)?
        getNotificationPermission,
  }) {
    return requestNotificationPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestChatPermissionEvent value)? requestChatPermission,
    TResult Function(RequestNotificationPermissionEvent value)?
        requestNotificationPermission,
    TResult Function(GetChatPermissionEvent value)? getChatPermission,
    TResult Function(GetNotificationPermissionEvent value)?
        getNotificationPermission,
    required TResult orElse(),
  }) {
    if (requestNotificationPermission != null) {
      return requestNotificationPermission(this);
    }
    return orElse();
  }
}

abstract class RequestNotificationPermissionEvent implements PermissionEvent {
  const factory RequestNotificationPermissionEvent() =
      _$RequestNotificationPermissionEventImpl;
}

/// @nodoc
abstract class _$$GetChatPermissionEventImplCopyWith<$Res> {
  factory _$$GetChatPermissionEventImplCopyWith(
          _$GetChatPermissionEventImpl value,
          $Res Function(_$GetChatPermissionEventImpl) then) =
      __$$GetChatPermissionEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetChatPermissionEventImplCopyWithImpl<$Res>
    extends _$PermissionEventCopyWithImpl<$Res, _$GetChatPermissionEventImpl>
    implements _$$GetChatPermissionEventImplCopyWith<$Res> {
  __$$GetChatPermissionEventImplCopyWithImpl(
      _$GetChatPermissionEventImpl _value,
      $Res Function(_$GetChatPermissionEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetChatPermissionEventImpl implements GetChatPermissionEvent {
  const _$GetChatPermissionEventImpl();

  @override
  String toString() {
    return 'PermissionEvent.getChatPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChatPermissionEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestChatPermission,
    required TResult Function() requestNotificationPermission,
    required TResult Function() getChatPermission,
    required TResult Function() getNotificationPermission,
  }) {
    return getChatPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestChatPermission,
    TResult? Function()? requestNotificationPermission,
    TResult? Function()? getChatPermission,
    TResult? Function()? getNotificationPermission,
  }) {
    return getChatPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestChatPermission,
    TResult Function()? requestNotificationPermission,
    TResult Function()? getChatPermission,
    TResult Function()? getNotificationPermission,
    required TResult orElse(),
  }) {
    if (getChatPermission != null) {
      return getChatPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestChatPermissionEvent value)
        requestChatPermission,
    required TResult Function(RequestNotificationPermissionEvent value)
        requestNotificationPermission,
    required TResult Function(GetChatPermissionEvent value) getChatPermission,
    required TResult Function(GetNotificationPermissionEvent value)
        getNotificationPermission,
  }) {
    return getChatPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestChatPermissionEvent value)? requestChatPermission,
    TResult? Function(RequestNotificationPermissionEvent value)?
        requestNotificationPermission,
    TResult? Function(GetChatPermissionEvent value)? getChatPermission,
    TResult? Function(GetNotificationPermissionEvent value)?
        getNotificationPermission,
  }) {
    return getChatPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestChatPermissionEvent value)? requestChatPermission,
    TResult Function(RequestNotificationPermissionEvent value)?
        requestNotificationPermission,
    TResult Function(GetChatPermissionEvent value)? getChatPermission,
    TResult Function(GetNotificationPermissionEvent value)?
        getNotificationPermission,
    required TResult orElse(),
  }) {
    if (getChatPermission != null) {
      return getChatPermission(this);
    }
    return orElse();
  }
}

abstract class GetChatPermissionEvent implements PermissionEvent {
  const factory GetChatPermissionEvent() = _$GetChatPermissionEventImpl;
}

/// @nodoc
abstract class _$$GetNotificationPermissionEventImplCopyWith<$Res> {
  factory _$$GetNotificationPermissionEventImplCopyWith(
          _$GetNotificationPermissionEventImpl value,
          $Res Function(_$GetNotificationPermissionEventImpl) then) =
      __$$GetNotificationPermissionEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNotificationPermissionEventImplCopyWithImpl<$Res>
    extends _$PermissionEventCopyWithImpl<$Res,
        _$GetNotificationPermissionEventImpl>
    implements _$$GetNotificationPermissionEventImplCopyWith<$Res> {
  __$$GetNotificationPermissionEventImplCopyWithImpl(
      _$GetNotificationPermissionEventImpl _value,
      $Res Function(_$GetNotificationPermissionEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetNotificationPermissionEventImpl
    implements GetNotificationPermissionEvent {
  const _$GetNotificationPermissionEventImpl();

  @override
  String toString() {
    return 'PermissionEvent.getNotificationPermission()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationPermissionEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestChatPermission,
    required TResult Function() requestNotificationPermission,
    required TResult Function() getChatPermission,
    required TResult Function() getNotificationPermission,
  }) {
    return getNotificationPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestChatPermission,
    TResult? Function()? requestNotificationPermission,
    TResult? Function()? getChatPermission,
    TResult? Function()? getNotificationPermission,
  }) {
    return getNotificationPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestChatPermission,
    TResult Function()? requestNotificationPermission,
    TResult Function()? getChatPermission,
    TResult Function()? getNotificationPermission,
    required TResult orElse(),
  }) {
    if (getNotificationPermission != null) {
      return getNotificationPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestChatPermissionEvent value)
        requestChatPermission,
    required TResult Function(RequestNotificationPermissionEvent value)
        requestNotificationPermission,
    required TResult Function(GetChatPermissionEvent value) getChatPermission,
    required TResult Function(GetNotificationPermissionEvent value)
        getNotificationPermission,
  }) {
    return getNotificationPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RequestChatPermissionEvent value)? requestChatPermission,
    TResult? Function(RequestNotificationPermissionEvent value)?
        requestNotificationPermission,
    TResult? Function(GetChatPermissionEvent value)? getChatPermission,
    TResult? Function(GetNotificationPermissionEvent value)?
        getNotificationPermission,
  }) {
    return getNotificationPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestChatPermissionEvent value)? requestChatPermission,
    TResult Function(RequestNotificationPermissionEvent value)?
        requestNotificationPermission,
    TResult Function(GetChatPermissionEvent value)? getChatPermission,
    TResult Function(GetNotificationPermissionEvent value)?
        getNotificationPermission,
    required TResult orElse(),
  }) {
    if (getNotificationPermission != null) {
      return getNotificationPermission(this);
    }
    return orElse();
  }
}

abstract class GetNotificationPermissionEvent implements PermissionEvent {
  const factory GetNotificationPermissionEvent() =
      _$GetNotificationPermissionEventImpl;
}
