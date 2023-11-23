// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserNotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotifications,
    required TResult Function(String type, String text, String notificationId)
        createNotification,
    required TResult Function() removeAllNotifications,
    required TResult Function(String notificationId) updateNotificationStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotifications,
    TResult? Function(String type, String text, String notificationId)?
        createNotification,
    TResult? Function()? removeAllNotifications,
    TResult? Function(String notificationId)? updateNotificationStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotifications,
    TResult Function(String type, String text, String notificationId)?
        createNotification,
    TResult Function()? removeAllNotifications,
    TResult Function(String notificationId)? updateNotificationStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotificationsEvent value) getNotifications,
    required TResult Function(CreateNotificationEvent value) createNotification,
    required TResult Function(RemoveNotificatinsEvent value)
        removeAllNotifications,
    required TResult Function(UpdateNotificationStatusEvent value)
        updateNotificationStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotificationsEvent value)? getNotifications,
    TResult? Function(CreateNotificationEvent value)? createNotification,
    TResult? Function(RemoveNotificatinsEvent value)? removeAllNotifications,
    TResult? Function(UpdateNotificationStatusEvent value)?
        updateNotificationStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotificationsEvent value)? getNotifications,
    TResult Function(CreateNotificationEvent value)? createNotification,
    TResult Function(RemoveNotificatinsEvent value)? removeAllNotifications,
    TResult Function(UpdateNotificationStatusEvent value)?
        updateNotificationStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNotificationEventCopyWith<$Res> {
  factory $UserNotificationEventCopyWith(UserNotificationEvent value,
          $Res Function(UserNotificationEvent) then) =
      _$UserNotificationEventCopyWithImpl<$Res, UserNotificationEvent>;
}

/// @nodoc
class _$UserNotificationEventCopyWithImpl<$Res,
        $Val extends UserNotificationEvent>
    implements $UserNotificationEventCopyWith<$Res> {
  _$UserNotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetNotificationsEventImplCopyWith<$Res> {
  factory _$$GetNotificationsEventImplCopyWith(
          _$GetNotificationsEventImpl value,
          $Res Function(_$GetNotificationsEventImpl) then) =
      __$$GetNotificationsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNotificationsEventImplCopyWithImpl<$Res>
    extends _$UserNotificationEventCopyWithImpl<$Res,
        _$GetNotificationsEventImpl>
    implements _$$GetNotificationsEventImplCopyWith<$Res> {
  __$$GetNotificationsEventImplCopyWithImpl(_$GetNotificationsEventImpl _value,
      $Res Function(_$GetNotificationsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetNotificationsEventImpl implements GetNotificationsEvent {
  const _$GetNotificationsEventImpl();

  @override
  String toString() {
    return 'UserNotificationEvent.getNotifications()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotificationsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotifications,
    required TResult Function(String type, String text, String notificationId)
        createNotification,
    required TResult Function() removeAllNotifications,
    required TResult Function(String notificationId) updateNotificationStatus,
  }) {
    return getNotifications();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotifications,
    TResult? Function(String type, String text, String notificationId)?
        createNotification,
    TResult? Function()? removeAllNotifications,
    TResult? Function(String notificationId)? updateNotificationStatus,
  }) {
    return getNotifications?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotifications,
    TResult Function(String type, String text, String notificationId)?
        createNotification,
    TResult Function()? removeAllNotifications,
    TResult Function(String notificationId)? updateNotificationStatus,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotificationsEvent value) getNotifications,
    required TResult Function(CreateNotificationEvent value) createNotification,
    required TResult Function(RemoveNotificatinsEvent value)
        removeAllNotifications,
    required TResult Function(UpdateNotificationStatusEvent value)
        updateNotificationStatus,
  }) {
    return getNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotificationsEvent value)? getNotifications,
    TResult? Function(CreateNotificationEvent value)? createNotification,
    TResult? Function(RemoveNotificatinsEvent value)? removeAllNotifications,
    TResult? Function(UpdateNotificationStatusEvent value)?
        updateNotificationStatus,
  }) {
    return getNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotificationsEvent value)? getNotifications,
    TResult Function(CreateNotificationEvent value)? createNotification,
    TResult Function(RemoveNotificatinsEvent value)? removeAllNotifications,
    TResult Function(UpdateNotificationStatusEvent value)?
        updateNotificationStatus,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(this);
    }
    return orElse();
  }
}

abstract class GetNotificationsEvent implements UserNotificationEvent {
  const factory GetNotificationsEvent() = _$GetNotificationsEventImpl;
}

/// @nodoc
abstract class _$$CreateNotificationEventImplCopyWith<$Res> {
  factory _$$CreateNotificationEventImplCopyWith(
          _$CreateNotificationEventImpl value,
          $Res Function(_$CreateNotificationEventImpl) then) =
      __$$CreateNotificationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String type, String text, String notificationId});
}

/// @nodoc
class __$$CreateNotificationEventImplCopyWithImpl<$Res>
    extends _$UserNotificationEventCopyWithImpl<$Res,
        _$CreateNotificationEventImpl>
    implements _$$CreateNotificationEventImplCopyWith<$Res> {
  __$$CreateNotificationEventImplCopyWithImpl(
      _$CreateNotificationEventImpl _value,
      $Res Function(_$CreateNotificationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? text = null,
    Object? notificationId = null,
  }) {
    return _then(_$CreateNotificationEventImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateNotificationEventImpl implements CreateNotificationEvent {
  const _$CreateNotificationEventImpl(
      this.type, this.text, this.notificationId);

  @override
  final String type;
  @override
  final String text;
  @override
  final String notificationId;

  @override
  String toString() {
    return 'UserNotificationEvent.createNotification(type: $type, text: $text, notificationId: $notificationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateNotificationEventImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, text, notificationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateNotificationEventImplCopyWith<_$CreateNotificationEventImpl>
      get copyWith => __$$CreateNotificationEventImplCopyWithImpl<
          _$CreateNotificationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotifications,
    required TResult Function(String type, String text, String notificationId)
        createNotification,
    required TResult Function() removeAllNotifications,
    required TResult Function(String notificationId) updateNotificationStatus,
  }) {
    return createNotification(type, text, notificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotifications,
    TResult? Function(String type, String text, String notificationId)?
        createNotification,
    TResult? Function()? removeAllNotifications,
    TResult? Function(String notificationId)? updateNotificationStatus,
  }) {
    return createNotification?.call(type, text, notificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotifications,
    TResult Function(String type, String text, String notificationId)?
        createNotification,
    TResult Function()? removeAllNotifications,
    TResult Function(String notificationId)? updateNotificationStatus,
    required TResult orElse(),
  }) {
    if (createNotification != null) {
      return createNotification(type, text, notificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotificationsEvent value) getNotifications,
    required TResult Function(CreateNotificationEvent value) createNotification,
    required TResult Function(RemoveNotificatinsEvent value)
        removeAllNotifications,
    required TResult Function(UpdateNotificationStatusEvent value)
        updateNotificationStatus,
  }) {
    return createNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotificationsEvent value)? getNotifications,
    TResult? Function(CreateNotificationEvent value)? createNotification,
    TResult? Function(RemoveNotificatinsEvent value)? removeAllNotifications,
    TResult? Function(UpdateNotificationStatusEvent value)?
        updateNotificationStatus,
  }) {
    return createNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotificationsEvent value)? getNotifications,
    TResult Function(CreateNotificationEvent value)? createNotification,
    TResult Function(RemoveNotificatinsEvent value)? removeAllNotifications,
    TResult Function(UpdateNotificationStatusEvent value)?
        updateNotificationStatus,
    required TResult orElse(),
  }) {
    if (createNotification != null) {
      return createNotification(this);
    }
    return orElse();
  }
}

abstract class CreateNotificationEvent implements UserNotificationEvent {
  const factory CreateNotificationEvent(
          final String type, final String text, final String notificationId) =
      _$CreateNotificationEventImpl;

  String get type;
  String get text;
  String get notificationId;
  @JsonKey(ignore: true)
  _$$CreateNotificationEventImplCopyWith<_$CreateNotificationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveNotificatinsEventImplCopyWith<$Res> {
  factory _$$RemoveNotificatinsEventImplCopyWith(
          _$RemoveNotificatinsEventImpl value,
          $Res Function(_$RemoveNotificatinsEventImpl) then) =
      __$$RemoveNotificatinsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveNotificatinsEventImplCopyWithImpl<$Res>
    extends _$UserNotificationEventCopyWithImpl<$Res,
        _$RemoveNotificatinsEventImpl>
    implements _$$RemoveNotificatinsEventImplCopyWith<$Res> {
  __$$RemoveNotificatinsEventImplCopyWithImpl(
      _$RemoveNotificatinsEventImpl _value,
      $Res Function(_$RemoveNotificatinsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveNotificatinsEventImpl implements RemoveNotificatinsEvent {
  const _$RemoveNotificatinsEventImpl();

  @override
  String toString() {
    return 'UserNotificationEvent.removeAllNotifications()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveNotificatinsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotifications,
    required TResult Function(String type, String text, String notificationId)
        createNotification,
    required TResult Function() removeAllNotifications,
    required TResult Function(String notificationId) updateNotificationStatus,
  }) {
    return removeAllNotifications();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotifications,
    TResult? Function(String type, String text, String notificationId)?
        createNotification,
    TResult? Function()? removeAllNotifications,
    TResult? Function(String notificationId)? updateNotificationStatus,
  }) {
    return removeAllNotifications?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotifications,
    TResult Function(String type, String text, String notificationId)?
        createNotification,
    TResult Function()? removeAllNotifications,
    TResult Function(String notificationId)? updateNotificationStatus,
    required TResult orElse(),
  }) {
    if (removeAllNotifications != null) {
      return removeAllNotifications();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotificationsEvent value) getNotifications,
    required TResult Function(CreateNotificationEvent value) createNotification,
    required TResult Function(RemoveNotificatinsEvent value)
        removeAllNotifications,
    required TResult Function(UpdateNotificationStatusEvent value)
        updateNotificationStatus,
  }) {
    return removeAllNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotificationsEvent value)? getNotifications,
    TResult? Function(CreateNotificationEvent value)? createNotification,
    TResult? Function(RemoveNotificatinsEvent value)? removeAllNotifications,
    TResult? Function(UpdateNotificationStatusEvent value)?
        updateNotificationStatus,
  }) {
    return removeAllNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotificationsEvent value)? getNotifications,
    TResult Function(CreateNotificationEvent value)? createNotification,
    TResult Function(RemoveNotificatinsEvent value)? removeAllNotifications,
    TResult Function(UpdateNotificationStatusEvent value)?
        updateNotificationStatus,
    required TResult orElse(),
  }) {
    if (removeAllNotifications != null) {
      return removeAllNotifications(this);
    }
    return orElse();
  }
}

abstract class RemoveNotificatinsEvent implements UserNotificationEvent {
  const factory RemoveNotificatinsEvent() = _$RemoveNotificatinsEventImpl;
}

/// @nodoc
abstract class _$$UpdateNotificationStatusEventImplCopyWith<$Res> {
  factory _$$UpdateNotificationStatusEventImplCopyWith(
          _$UpdateNotificationStatusEventImpl value,
          $Res Function(_$UpdateNotificationStatusEventImpl) then) =
      __$$UpdateNotificationStatusEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String notificationId});
}

/// @nodoc
class __$$UpdateNotificationStatusEventImplCopyWithImpl<$Res>
    extends _$UserNotificationEventCopyWithImpl<$Res,
        _$UpdateNotificationStatusEventImpl>
    implements _$$UpdateNotificationStatusEventImplCopyWith<$Res> {
  __$$UpdateNotificationStatusEventImplCopyWithImpl(
      _$UpdateNotificationStatusEventImpl _value,
      $Res Function(_$UpdateNotificationStatusEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = null,
  }) {
    return _then(_$UpdateNotificationStatusEventImpl(
      null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateNotificationStatusEventImpl
    implements UpdateNotificationStatusEvent {
  const _$UpdateNotificationStatusEventImpl(this.notificationId);

  @override
  final String notificationId;

  @override
  String toString() {
    return 'UserNotificationEvent.updateNotificationStatus(notificationId: $notificationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNotificationStatusEventImpl &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notificationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNotificationStatusEventImplCopyWith<
          _$UpdateNotificationStatusEventImpl>
      get copyWith => __$$UpdateNotificationStatusEventImplCopyWithImpl<
          _$UpdateNotificationStatusEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotifications,
    required TResult Function(String type, String text, String notificationId)
        createNotification,
    required TResult Function() removeAllNotifications,
    required TResult Function(String notificationId) updateNotificationStatus,
  }) {
    return updateNotificationStatus(notificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotifications,
    TResult? Function(String type, String text, String notificationId)?
        createNotification,
    TResult? Function()? removeAllNotifications,
    TResult? Function(String notificationId)? updateNotificationStatus,
  }) {
    return updateNotificationStatus?.call(notificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotifications,
    TResult Function(String type, String text, String notificationId)?
        createNotification,
    TResult Function()? removeAllNotifications,
    TResult Function(String notificationId)? updateNotificationStatus,
    required TResult orElse(),
  }) {
    if (updateNotificationStatus != null) {
      return updateNotificationStatus(notificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNotificationsEvent value) getNotifications,
    required TResult Function(CreateNotificationEvent value) createNotification,
    required TResult Function(RemoveNotificatinsEvent value)
        removeAllNotifications,
    required TResult Function(UpdateNotificationStatusEvent value)
        updateNotificationStatus,
  }) {
    return updateNotificationStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNotificationsEvent value)? getNotifications,
    TResult? Function(CreateNotificationEvent value)? createNotification,
    TResult? Function(RemoveNotificatinsEvent value)? removeAllNotifications,
    TResult? Function(UpdateNotificationStatusEvent value)?
        updateNotificationStatus,
  }) {
    return updateNotificationStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNotificationsEvent value)? getNotifications,
    TResult Function(CreateNotificationEvent value)? createNotification,
    TResult Function(RemoveNotificatinsEvent value)? removeAllNotifications,
    TResult Function(UpdateNotificationStatusEvent value)?
        updateNotificationStatus,
    required TResult orElse(),
  }) {
    if (updateNotificationStatus != null) {
      return updateNotificationStatus(this);
    }
    return orElse();
  }
}

abstract class UpdateNotificationStatusEvent implements UserNotificationEvent {
  const factory UpdateNotificationStatusEvent(final String notificationId) =
      _$UpdateNotificationStatusEventImpl;

  String get notificationId;
  @JsonKey(ignore: true)
  _$$UpdateNotificationStatusEventImplCopyWith<
          _$UpdateNotificationStatusEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserNotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserNotification> notifications) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserNotification> notifications)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserNotification> notifications)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNotificationStateCopyWith<$Res> {
  factory $UserNotificationStateCopyWith(UserNotificationState value,
          $Res Function(UserNotificationState) then) =
      _$UserNotificationStateCopyWithImpl<$Res, UserNotificationState>;
}

/// @nodoc
class _$UserNotificationStateCopyWithImpl<$Res,
        $Val extends UserNotificationState>
    implements $UserNotificationStateCopyWith<$Res> {
  _$UserNotificationStateCopyWithImpl(this._value, this._then);

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
    extends _$UserNotificationStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'UserNotificationState.initial()';
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
    required TResult Function(List<UserNotification> notifications) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserNotification> notifications)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserNotification> notifications)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserNotificationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserNotification> notifications});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$UserNotificationStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_$LoadedImpl(
      null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<UserNotification>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<UserNotification> notifications)
      : _notifications = notifications;

  final List<UserNotification> _notifications;
  @override
  List<UserNotification> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  String toString() {
    return 'UserNotificationState.loaded(notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notifications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserNotification> notifications) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loaded(notifications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserNotification> notifications)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loaded?.call(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserNotification> notifications)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(notifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements UserNotificationState {
  const factory _Loaded(final List<UserNotification> notifications) =
      _$LoadedImpl;

  List<UserNotification> get notifications;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$UserNotificationStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'UserNotificationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserNotification> notifications) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserNotification> notifications)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserNotification> notifications)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UserNotificationState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$UserNotificationStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'UserNotificationState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<UserNotification> notifications) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<UserNotification> notifications)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<UserNotification> notifications)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements UserNotificationState {
  const factory _Error() = _$ErrorImpl;
}
