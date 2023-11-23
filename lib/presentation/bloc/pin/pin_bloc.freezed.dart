// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PinEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userPin) setNewPin,
    required TResult Function(String userPin) confirmPin,
    required TResult Function() getUserPin,
    required TResult Function() resetUserPin,
    required TResult Function(String userPin) enterUserPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userPin)? setNewPin,
    TResult? Function(String userPin)? confirmPin,
    TResult? Function()? getUserPin,
    TResult? Function()? resetUserPin,
    TResult? Function(String userPin)? enterUserPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userPin)? setNewPin,
    TResult Function(String userPin)? confirmPin,
    TResult Function()? getUserPin,
    TResult Function()? resetUserPin,
    TResult Function(String userPin)? enterUserPin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetNewPinEvent value) setNewPin,
    required TResult Function(ConfirmUserPinEvent value) confirmPin,
    required TResult Function(GetUserPinEvent value) getUserPin,
    required TResult Function(ResetUserPinEvent value) resetUserPin,
    required TResult Function(EnterUserPinEvent value) enterUserPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetNewPinEvent value)? setNewPin,
    TResult? Function(ConfirmUserPinEvent value)? confirmPin,
    TResult? Function(GetUserPinEvent value)? getUserPin,
    TResult? Function(ResetUserPinEvent value)? resetUserPin,
    TResult? Function(EnterUserPinEvent value)? enterUserPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetNewPinEvent value)? setNewPin,
    TResult Function(ConfirmUserPinEvent value)? confirmPin,
    TResult Function(GetUserPinEvent value)? getUserPin,
    TResult Function(ResetUserPinEvent value)? resetUserPin,
    TResult Function(EnterUserPinEvent value)? enterUserPin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PinEventCopyWith<$Res> {
  factory $PinEventCopyWith(PinEvent value, $Res Function(PinEvent) then) =
      _$PinEventCopyWithImpl<$Res, PinEvent>;
}

/// @nodoc
class _$PinEventCopyWithImpl<$Res, $Val extends PinEvent>
    implements $PinEventCopyWith<$Res> {
  _$PinEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SetNewPinEventImplCopyWith<$Res> {
  factory _$$SetNewPinEventImplCopyWith(_$SetNewPinEventImpl value,
          $Res Function(_$SetNewPinEventImpl) then) =
      __$$SetNewPinEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userPin});
}

/// @nodoc
class __$$SetNewPinEventImplCopyWithImpl<$Res>
    extends _$PinEventCopyWithImpl<$Res, _$SetNewPinEventImpl>
    implements _$$SetNewPinEventImplCopyWith<$Res> {
  __$$SetNewPinEventImplCopyWithImpl(
      _$SetNewPinEventImpl _value, $Res Function(_$SetNewPinEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userPin = null,
  }) {
    return _then(_$SetNewPinEventImpl(
      null == userPin
          ? _value.userPin
          : userPin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetNewPinEventImpl implements SetNewPinEvent {
  const _$SetNewPinEventImpl(this.userPin);

  @override
  final String userPin;

  @override
  String toString() {
    return 'PinEvent.setNewPin(userPin: $userPin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetNewPinEventImpl &&
            (identical(other.userPin, userPin) || other.userPin == userPin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userPin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetNewPinEventImplCopyWith<_$SetNewPinEventImpl> get copyWith =>
      __$$SetNewPinEventImplCopyWithImpl<_$SetNewPinEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userPin) setNewPin,
    required TResult Function(String userPin) confirmPin,
    required TResult Function() getUserPin,
    required TResult Function() resetUserPin,
    required TResult Function(String userPin) enterUserPin,
  }) {
    return setNewPin(userPin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userPin)? setNewPin,
    TResult? Function(String userPin)? confirmPin,
    TResult? Function()? getUserPin,
    TResult? Function()? resetUserPin,
    TResult? Function(String userPin)? enterUserPin,
  }) {
    return setNewPin?.call(userPin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userPin)? setNewPin,
    TResult Function(String userPin)? confirmPin,
    TResult Function()? getUserPin,
    TResult Function()? resetUserPin,
    TResult Function(String userPin)? enterUserPin,
    required TResult orElse(),
  }) {
    if (setNewPin != null) {
      return setNewPin(userPin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetNewPinEvent value) setNewPin,
    required TResult Function(ConfirmUserPinEvent value) confirmPin,
    required TResult Function(GetUserPinEvent value) getUserPin,
    required TResult Function(ResetUserPinEvent value) resetUserPin,
    required TResult Function(EnterUserPinEvent value) enterUserPin,
  }) {
    return setNewPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetNewPinEvent value)? setNewPin,
    TResult? Function(ConfirmUserPinEvent value)? confirmPin,
    TResult? Function(GetUserPinEvent value)? getUserPin,
    TResult? Function(ResetUserPinEvent value)? resetUserPin,
    TResult? Function(EnterUserPinEvent value)? enterUserPin,
  }) {
    return setNewPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetNewPinEvent value)? setNewPin,
    TResult Function(ConfirmUserPinEvent value)? confirmPin,
    TResult Function(GetUserPinEvent value)? getUserPin,
    TResult Function(ResetUserPinEvent value)? resetUserPin,
    TResult Function(EnterUserPinEvent value)? enterUserPin,
    required TResult orElse(),
  }) {
    if (setNewPin != null) {
      return setNewPin(this);
    }
    return orElse();
  }
}

abstract class SetNewPinEvent implements PinEvent {
  const factory SetNewPinEvent(final String userPin) = _$SetNewPinEventImpl;

  String get userPin;
  @JsonKey(ignore: true)
  _$$SetNewPinEventImplCopyWith<_$SetNewPinEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmUserPinEventImplCopyWith<$Res> {
  factory _$$ConfirmUserPinEventImplCopyWith(_$ConfirmUserPinEventImpl value,
          $Res Function(_$ConfirmUserPinEventImpl) then) =
      __$$ConfirmUserPinEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userPin});
}

/// @nodoc
class __$$ConfirmUserPinEventImplCopyWithImpl<$Res>
    extends _$PinEventCopyWithImpl<$Res, _$ConfirmUserPinEventImpl>
    implements _$$ConfirmUserPinEventImplCopyWith<$Res> {
  __$$ConfirmUserPinEventImplCopyWithImpl(_$ConfirmUserPinEventImpl _value,
      $Res Function(_$ConfirmUserPinEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userPin = null,
  }) {
    return _then(_$ConfirmUserPinEventImpl(
      null == userPin
          ? _value.userPin
          : userPin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmUserPinEventImpl implements ConfirmUserPinEvent {
  const _$ConfirmUserPinEventImpl(this.userPin);

  @override
  final String userPin;

  @override
  String toString() {
    return 'PinEvent.confirmPin(userPin: $userPin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmUserPinEventImpl &&
            (identical(other.userPin, userPin) || other.userPin == userPin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userPin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmUserPinEventImplCopyWith<_$ConfirmUserPinEventImpl> get copyWith =>
      __$$ConfirmUserPinEventImplCopyWithImpl<_$ConfirmUserPinEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userPin) setNewPin,
    required TResult Function(String userPin) confirmPin,
    required TResult Function() getUserPin,
    required TResult Function() resetUserPin,
    required TResult Function(String userPin) enterUserPin,
  }) {
    return confirmPin(userPin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userPin)? setNewPin,
    TResult? Function(String userPin)? confirmPin,
    TResult? Function()? getUserPin,
    TResult? Function()? resetUserPin,
    TResult? Function(String userPin)? enterUserPin,
  }) {
    return confirmPin?.call(userPin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userPin)? setNewPin,
    TResult Function(String userPin)? confirmPin,
    TResult Function()? getUserPin,
    TResult Function()? resetUserPin,
    TResult Function(String userPin)? enterUserPin,
    required TResult orElse(),
  }) {
    if (confirmPin != null) {
      return confirmPin(userPin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetNewPinEvent value) setNewPin,
    required TResult Function(ConfirmUserPinEvent value) confirmPin,
    required TResult Function(GetUserPinEvent value) getUserPin,
    required TResult Function(ResetUserPinEvent value) resetUserPin,
    required TResult Function(EnterUserPinEvent value) enterUserPin,
  }) {
    return confirmPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetNewPinEvent value)? setNewPin,
    TResult? Function(ConfirmUserPinEvent value)? confirmPin,
    TResult? Function(GetUserPinEvent value)? getUserPin,
    TResult? Function(ResetUserPinEvent value)? resetUserPin,
    TResult? Function(EnterUserPinEvent value)? enterUserPin,
  }) {
    return confirmPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetNewPinEvent value)? setNewPin,
    TResult Function(ConfirmUserPinEvent value)? confirmPin,
    TResult Function(GetUserPinEvent value)? getUserPin,
    TResult Function(ResetUserPinEvent value)? resetUserPin,
    TResult Function(EnterUserPinEvent value)? enterUserPin,
    required TResult orElse(),
  }) {
    if (confirmPin != null) {
      return confirmPin(this);
    }
    return orElse();
  }
}

abstract class ConfirmUserPinEvent implements PinEvent {
  const factory ConfirmUserPinEvent(final String userPin) =
      _$ConfirmUserPinEventImpl;

  String get userPin;
  @JsonKey(ignore: true)
  _$$ConfirmUserPinEventImplCopyWith<_$ConfirmUserPinEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserPinEventImplCopyWith<$Res> {
  factory _$$GetUserPinEventImplCopyWith(_$GetUserPinEventImpl value,
          $Res Function(_$GetUserPinEventImpl) then) =
      __$$GetUserPinEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserPinEventImplCopyWithImpl<$Res>
    extends _$PinEventCopyWithImpl<$Res, _$GetUserPinEventImpl>
    implements _$$GetUserPinEventImplCopyWith<$Res> {
  __$$GetUserPinEventImplCopyWithImpl(
      _$GetUserPinEventImpl _value, $Res Function(_$GetUserPinEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserPinEventImpl implements GetUserPinEvent {
  const _$GetUserPinEventImpl();

  @override
  String toString() {
    return 'PinEvent.getUserPin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserPinEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userPin) setNewPin,
    required TResult Function(String userPin) confirmPin,
    required TResult Function() getUserPin,
    required TResult Function() resetUserPin,
    required TResult Function(String userPin) enterUserPin,
  }) {
    return getUserPin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userPin)? setNewPin,
    TResult? Function(String userPin)? confirmPin,
    TResult? Function()? getUserPin,
    TResult? Function()? resetUserPin,
    TResult? Function(String userPin)? enterUserPin,
  }) {
    return getUserPin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userPin)? setNewPin,
    TResult Function(String userPin)? confirmPin,
    TResult Function()? getUserPin,
    TResult Function()? resetUserPin,
    TResult Function(String userPin)? enterUserPin,
    required TResult orElse(),
  }) {
    if (getUserPin != null) {
      return getUserPin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetNewPinEvent value) setNewPin,
    required TResult Function(ConfirmUserPinEvent value) confirmPin,
    required TResult Function(GetUserPinEvent value) getUserPin,
    required TResult Function(ResetUserPinEvent value) resetUserPin,
    required TResult Function(EnterUserPinEvent value) enterUserPin,
  }) {
    return getUserPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetNewPinEvent value)? setNewPin,
    TResult? Function(ConfirmUserPinEvent value)? confirmPin,
    TResult? Function(GetUserPinEvent value)? getUserPin,
    TResult? Function(ResetUserPinEvent value)? resetUserPin,
    TResult? Function(EnterUserPinEvent value)? enterUserPin,
  }) {
    return getUserPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetNewPinEvent value)? setNewPin,
    TResult Function(ConfirmUserPinEvent value)? confirmPin,
    TResult Function(GetUserPinEvent value)? getUserPin,
    TResult Function(ResetUserPinEvent value)? resetUserPin,
    TResult Function(EnterUserPinEvent value)? enterUserPin,
    required TResult orElse(),
  }) {
    if (getUserPin != null) {
      return getUserPin(this);
    }
    return orElse();
  }
}

abstract class GetUserPinEvent implements PinEvent {
  const factory GetUserPinEvent() = _$GetUserPinEventImpl;
}

/// @nodoc
abstract class _$$ResetUserPinEventImplCopyWith<$Res> {
  factory _$$ResetUserPinEventImplCopyWith(_$ResetUserPinEventImpl value,
          $Res Function(_$ResetUserPinEventImpl) then) =
      __$$ResetUserPinEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetUserPinEventImplCopyWithImpl<$Res>
    extends _$PinEventCopyWithImpl<$Res, _$ResetUserPinEventImpl>
    implements _$$ResetUserPinEventImplCopyWith<$Res> {
  __$$ResetUserPinEventImplCopyWithImpl(_$ResetUserPinEventImpl _value,
      $Res Function(_$ResetUserPinEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetUserPinEventImpl implements ResetUserPinEvent {
  const _$ResetUserPinEventImpl();

  @override
  String toString() {
    return 'PinEvent.resetUserPin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetUserPinEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userPin) setNewPin,
    required TResult Function(String userPin) confirmPin,
    required TResult Function() getUserPin,
    required TResult Function() resetUserPin,
    required TResult Function(String userPin) enterUserPin,
  }) {
    return resetUserPin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userPin)? setNewPin,
    TResult? Function(String userPin)? confirmPin,
    TResult? Function()? getUserPin,
    TResult? Function()? resetUserPin,
    TResult? Function(String userPin)? enterUserPin,
  }) {
    return resetUserPin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userPin)? setNewPin,
    TResult Function(String userPin)? confirmPin,
    TResult Function()? getUserPin,
    TResult Function()? resetUserPin,
    TResult Function(String userPin)? enterUserPin,
    required TResult orElse(),
  }) {
    if (resetUserPin != null) {
      return resetUserPin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetNewPinEvent value) setNewPin,
    required TResult Function(ConfirmUserPinEvent value) confirmPin,
    required TResult Function(GetUserPinEvent value) getUserPin,
    required TResult Function(ResetUserPinEvent value) resetUserPin,
    required TResult Function(EnterUserPinEvent value) enterUserPin,
  }) {
    return resetUserPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetNewPinEvent value)? setNewPin,
    TResult? Function(ConfirmUserPinEvent value)? confirmPin,
    TResult? Function(GetUserPinEvent value)? getUserPin,
    TResult? Function(ResetUserPinEvent value)? resetUserPin,
    TResult? Function(EnterUserPinEvent value)? enterUserPin,
  }) {
    return resetUserPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetNewPinEvent value)? setNewPin,
    TResult Function(ConfirmUserPinEvent value)? confirmPin,
    TResult Function(GetUserPinEvent value)? getUserPin,
    TResult Function(ResetUserPinEvent value)? resetUserPin,
    TResult Function(EnterUserPinEvent value)? enterUserPin,
    required TResult orElse(),
  }) {
    if (resetUserPin != null) {
      return resetUserPin(this);
    }
    return orElse();
  }
}

abstract class ResetUserPinEvent implements PinEvent {
  const factory ResetUserPinEvent() = _$ResetUserPinEventImpl;
}

/// @nodoc
abstract class _$$EnterUserPinEventImplCopyWith<$Res> {
  factory _$$EnterUserPinEventImplCopyWith(_$EnterUserPinEventImpl value,
          $Res Function(_$EnterUserPinEventImpl) then) =
      __$$EnterUserPinEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userPin});
}

/// @nodoc
class __$$EnterUserPinEventImplCopyWithImpl<$Res>
    extends _$PinEventCopyWithImpl<$Res, _$EnterUserPinEventImpl>
    implements _$$EnterUserPinEventImplCopyWith<$Res> {
  __$$EnterUserPinEventImplCopyWithImpl(_$EnterUserPinEventImpl _value,
      $Res Function(_$EnterUserPinEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userPin = null,
  }) {
    return _then(_$EnterUserPinEventImpl(
      null == userPin
          ? _value.userPin
          : userPin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EnterUserPinEventImpl implements EnterUserPinEvent {
  const _$EnterUserPinEventImpl(this.userPin);

  @override
  final String userPin;

  @override
  String toString() {
    return 'PinEvent.enterUserPin(userPin: $userPin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnterUserPinEventImpl &&
            (identical(other.userPin, userPin) || other.userPin == userPin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userPin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnterUserPinEventImplCopyWith<_$EnterUserPinEventImpl> get copyWith =>
      __$$EnterUserPinEventImplCopyWithImpl<_$EnterUserPinEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userPin) setNewPin,
    required TResult Function(String userPin) confirmPin,
    required TResult Function() getUserPin,
    required TResult Function() resetUserPin,
    required TResult Function(String userPin) enterUserPin,
  }) {
    return enterUserPin(userPin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userPin)? setNewPin,
    TResult? Function(String userPin)? confirmPin,
    TResult? Function()? getUserPin,
    TResult? Function()? resetUserPin,
    TResult? Function(String userPin)? enterUserPin,
  }) {
    return enterUserPin?.call(userPin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userPin)? setNewPin,
    TResult Function(String userPin)? confirmPin,
    TResult Function()? getUserPin,
    TResult Function()? resetUserPin,
    TResult Function(String userPin)? enterUserPin,
    required TResult orElse(),
  }) {
    if (enterUserPin != null) {
      return enterUserPin(userPin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SetNewPinEvent value) setNewPin,
    required TResult Function(ConfirmUserPinEvent value) confirmPin,
    required TResult Function(GetUserPinEvent value) getUserPin,
    required TResult Function(ResetUserPinEvent value) resetUserPin,
    required TResult Function(EnterUserPinEvent value) enterUserPin,
  }) {
    return enterUserPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SetNewPinEvent value)? setNewPin,
    TResult? Function(ConfirmUserPinEvent value)? confirmPin,
    TResult? Function(GetUserPinEvent value)? getUserPin,
    TResult? Function(ResetUserPinEvent value)? resetUserPin,
    TResult? Function(EnterUserPinEvent value)? enterUserPin,
  }) {
    return enterUserPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SetNewPinEvent value)? setNewPin,
    TResult Function(ConfirmUserPinEvent value)? confirmPin,
    TResult Function(GetUserPinEvent value)? getUserPin,
    TResult Function(ResetUserPinEvent value)? resetUserPin,
    TResult Function(EnterUserPinEvent value)? enterUserPin,
    required TResult orElse(),
  }) {
    if (enterUserPin != null) {
      return enterUserPin(this);
    }
    return orElse();
  }
}

abstract class EnterUserPinEvent implements PinEvent {
  const factory EnterUserPinEvent(final String userPin) =
      _$EnterUserPinEventImpl;

  String get userPin;
  @JsonKey(ignore: true)
  _$$EnterUserPinEventImplCopyWith<_$EnterUserPinEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
