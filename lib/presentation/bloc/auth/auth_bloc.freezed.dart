// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) signUpWithNumber,
    required TResult Function(String userOtp, String phoneNumber) verifyOtp,
    required TResult Function() signOut,
    required TResult Function() getCurrentUserId,
    required TResult Function(DateTime date) updateUserDate,
    required TResult Function(String firstName) updateUserFirstName,
    required TResult Function(String lastName) updateUserLastName,
    required TResult Function(File file) setProfilePhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? signUpWithNumber,
    TResult? Function(String userOtp, String phoneNumber)? verifyOtp,
    TResult? Function()? signOut,
    TResult? Function()? getCurrentUserId,
    TResult? Function(DateTime date)? updateUserDate,
    TResult? Function(String firstName)? updateUserFirstName,
    TResult? Function(String lastName)? updateUserLastName,
    TResult? Function(File file)? setProfilePhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? signUpWithNumber,
    TResult Function(String userOtp, String phoneNumber)? verifyOtp,
    TResult Function()? signOut,
    TResult Function()? getCurrentUserId,
    TResult Function(DateTime date)? updateUserDate,
    TResult Function(String firstName)? updateUserFirstName,
    TResult Function(String lastName)? updateUserLastName,
    TResult Function(File file)? setProfilePhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpWithNumberEvent value) signUpWithNumber,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetCurrentUserIdEvent value) getCurrentUserId,
    required TResult Function(UpdateUserDateEvent value) updateUserDate,
    required TResult Function(UpdateUserFirstNameEvent value)
        updateUserFirstName,
    required TResult Function(UpdateUserLastNameEvent value) updateUserLastName,
    required TResult Function(SetProfilePhotoEvent value) setProfilePhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpWithNumberEvent value)? signUpWithNumber,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetCurrentUserIdEvent value)? getCurrentUserId,
    TResult? Function(UpdateUserDateEvent value)? updateUserDate,
    TResult? Function(UpdateUserFirstNameEvent value)? updateUserFirstName,
    TResult? Function(UpdateUserLastNameEvent value)? updateUserLastName,
    TResult? Function(SetProfilePhotoEvent value)? setProfilePhoto,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpWithNumberEvent value)? signUpWithNumber,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetCurrentUserIdEvent value)? getCurrentUserId,
    TResult Function(UpdateUserDateEvent value)? updateUserDate,
    TResult Function(UpdateUserFirstNameEvent value)? updateUserFirstName,
    TResult Function(UpdateUserLastNameEvent value)? updateUserLastName,
    TResult Function(SetProfilePhotoEvent value)? setProfilePhoto,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpWithNumberEventImplCopyWith<$Res> {
  factory _$$SignUpWithNumberEventImplCopyWith(
          _$SignUpWithNumberEventImpl value,
          $Res Function(_$SignUpWithNumberEventImpl) then) =
      __$$SignUpWithNumberEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$SignUpWithNumberEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpWithNumberEventImpl>
    implements _$$SignUpWithNumberEventImplCopyWith<$Res> {
  __$$SignUpWithNumberEventImplCopyWithImpl(_$SignUpWithNumberEventImpl _value,
      $Res Function(_$SignUpWithNumberEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$SignUpWithNumberEventImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpWithNumberEventImpl implements SignUpWithNumberEvent {
  const _$SignUpWithNumberEventImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthEvent.signUpWithNumber(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpWithNumberEventImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpWithNumberEventImplCopyWith<_$SignUpWithNumberEventImpl>
      get copyWith => __$$SignUpWithNumberEventImplCopyWithImpl<
          _$SignUpWithNumberEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) signUpWithNumber,
    required TResult Function(String userOtp, String phoneNumber) verifyOtp,
    required TResult Function() signOut,
    required TResult Function() getCurrentUserId,
    required TResult Function(DateTime date) updateUserDate,
    required TResult Function(String firstName) updateUserFirstName,
    required TResult Function(String lastName) updateUserLastName,
    required TResult Function(File file) setProfilePhoto,
  }) {
    return signUpWithNumber(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? signUpWithNumber,
    TResult? Function(String userOtp, String phoneNumber)? verifyOtp,
    TResult? Function()? signOut,
    TResult? Function()? getCurrentUserId,
    TResult? Function(DateTime date)? updateUserDate,
    TResult? Function(String firstName)? updateUserFirstName,
    TResult? Function(String lastName)? updateUserLastName,
    TResult? Function(File file)? setProfilePhoto,
  }) {
    return signUpWithNumber?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? signUpWithNumber,
    TResult Function(String userOtp, String phoneNumber)? verifyOtp,
    TResult Function()? signOut,
    TResult Function()? getCurrentUserId,
    TResult Function(DateTime date)? updateUserDate,
    TResult Function(String firstName)? updateUserFirstName,
    TResult Function(String lastName)? updateUserLastName,
    TResult Function(File file)? setProfilePhoto,
    required TResult orElse(),
  }) {
    if (signUpWithNumber != null) {
      return signUpWithNumber(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpWithNumberEvent value) signUpWithNumber,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetCurrentUserIdEvent value) getCurrentUserId,
    required TResult Function(UpdateUserDateEvent value) updateUserDate,
    required TResult Function(UpdateUserFirstNameEvent value)
        updateUserFirstName,
    required TResult Function(UpdateUserLastNameEvent value) updateUserLastName,
    required TResult Function(SetProfilePhotoEvent value) setProfilePhoto,
  }) {
    return signUpWithNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpWithNumberEvent value)? signUpWithNumber,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetCurrentUserIdEvent value)? getCurrentUserId,
    TResult? Function(UpdateUserDateEvent value)? updateUserDate,
    TResult? Function(UpdateUserFirstNameEvent value)? updateUserFirstName,
    TResult? Function(UpdateUserLastNameEvent value)? updateUserLastName,
    TResult? Function(SetProfilePhotoEvent value)? setProfilePhoto,
  }) {
    return signUpWithNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpWithNumberEvent value)? signUpWithNumber,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetCurrentUserIdEvent value)? getCurrentUserId,
    TResult Function(UpdateUserDateEvent value)? updateUserDate,
    TResult Function(UpdateUserFirstNameEvent value)? updateUserFirstName,
    TResult Function(UpdateUserLastNameEvent value)? updateUserLastName,
    TResult Function(SetProfilePhotoEvent value)? setProfilePhoto,
    required TResult orElse(),
  }) {
    if (signUpWithNumber != null) {
      return signUpWithNumber(this);
    }
    return orElse();
  }
}

abstract class SignUpWithNumberEvent implements AuthEvent {
  const factory SignUpWithNumberEvent(final String phoneNumber) =
      _$SignUpWithNumberEventImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$SignUpWithNumberEventImplCopyWith<_$SignUpWithNumberEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpEventImplCopyWith<$Res> {
  factory _$$VerifyOtpEventImplCopyWith(_$VerifyOtpEventImpl value,
          $Res Function(_$VerifyOtpEventImpl) then) =
      __$$VerifyOtpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userOtp, String phoneNumber});
}

/// @nodoc
class __$$VerifyOtpEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyOtpEventImpl>
    implements _$$VerifyOtpEventImplCopyWith<$Res> {
  __$$VerifyOtpEventImplCopyWithImpl(
      _$VerifyOtpEventImpl _value, $Res Function(_$VerifyOtpEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userOtp = null,
    Object? phoneNumber = null,
  }) {
    return _then(_$VerifyOtpEventImpl(
      null == userOtp
          ? _value.userOtp
          : userOtp // ignore: cast_nullable_to_non_nullable
              as String,
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOtpEventImpl implements VerifyOtpEvent {
  const _$VerifyOtpEventImpl(this.userOtp, this.phoneNumber);

  @override
  final String userOtp;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthEvent.verifyOtp(userOtp: $userOtp, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpEventImpl &&
            (identical(other.userOtp, userOtp) || other.userOtp == userOtp) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userOtp, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpEventImplCopyWith<_$VerifyOtpEventImpl> get copyWith =>
      __$$VerifyOtpEventImplCopyWithImpl<_$VerifyOtpEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) signUpWithNumber,
    required TResult Function(String userOtp, String phoneNumber) verifyOtp,
    required TResult Function() signOut,
    required TResult Function() getCurrentUserId,
    required TResult Function(DateTime date) updateUserDate,
    required TResult Function(String firstName) updateUserFirstName,
    required TResult Function(String lastName) updateUserLastName,
    required TResult Function(File file) setProfilePhoto,
  }) {
    return verifyOtp(userOtp, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? signUpWithNumber,
    TResult? Function(String userOtp, String phoneNumber)? verifyOtp,
    TResult? Function()? signOut,
    TResult? Function()? getCurrentUserId,
    TResult? Function(DateTime date)? updateUserDate,
    TResult? Function(String firstName)? updateUserFirstName,
    TResult? Function(String lastName)? updateUserLastName,
    TResult? Function(File file)? setProfilePhoto,
  }) {
    return verifyOtp?.call(userOtp, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? signUpWithNumber,
    TResult Function(String userOtp, String phoneNumber)? verifyOtp,
    TResult Function()? signOut,
    TResult Function()? getCurrentUserId,
    TResult Function(DateTime date)? updateUserDate,
    TResult Function(String firstName)? updateUserFirstName,
    TResult Function(String lastName)? updateUserLastName,
    TResult Function(File file)? setProfilePhoto,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(userOtp, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpWithNumberEvent value) signUpWithNumber,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetCurrentUserIdEvent value) getCurrentUserId,
    required TResult Function(UpdateUserDateEvent value) updateUserDate,
    required TResult Function(UpdateUserFirstNameEvent value)
        updateUserFirstName,
    required TResult Function(UpdateUserLastNameEvent value) updateUserLastName,
    required TResult Function(SetProfilePhotoEvent value) setProfilePhoto,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpWithNumberEvent value)? signUpWithNumber,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetCurrentUserIdEvent value)? getCurrentUserId,
    TResult? Function(UpdateUserDateEvent value)? updateUserDate,
    TResult? Function(UpdateUserFirstNameEvent value)? updateUserFirstName,
    TResult? Function(UpdateUserLastNameEvent value)? updateUserLastName,
    TResult? Function(SetProfilePhotoEvent value)? setProfilePhoto,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpWithNumberEvent value)? signUpWithNumber,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetCurrentUserIdEvent value)? getCurrentUserId,
    TResult Function(UpdateUserDateEvent value)? updateUserDate,
    TResult Function(UpdateUserFirstNameEvent value)? updateUserFirstName,
    TResult Function(UpdateUserLastNameEvent value)? updateUserLastName,
    TResult Function(SetProfilePhotoEvent value)? setProfilePhoto,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class VerifyOtpEvent implements AuthEvent {
  const factory VerifyOtpEvent(final String userOtp, final String phoneNumber) =
      _$VerifyOtpEventImpl;

  String get userOtp;
  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$VerifyOtpEventImplCopyWith<_$VerifyOtpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutEventImplCopyWith<$Res> {
  factory _$$SignOutEventImplCopyWith(
          _$SignOutEventImpl value, $Res Function(_$SignOutEventImpl) then) =
      __$$SignOutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutEventImpl>
    implements _$$SignOutEventImplCopyWith<$Res> {
  __$$SignOutEventImplCopyWithImpl(
      _$SignOutEventImpl _value, $Res Function(_$SignOutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOutEventImpl implements SignOutEvent {
  const _$SignOutEventImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) signUpWithNumber,
    required TResult Function(String userOtp, String phoneNumber) verifyOtp,
    required TResult Function() signOut,
    required TResult Function() getCurrentUserId,
    required TResult Function(DateTime date) updateUserDate,
    required TResult Function(String firstName) updateUserFirstName,
    required TResult Function(String lastName) updateUserLastName,
    required TResult Function(File file) setProfilePhoto,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? signUpWithNumber,
    TResult? Function(String userOtp, String phoneNumber)? verifyOtp,
    TResult? Function()? signOut,
    TResult? Function()? getCurrentUserId,
    TResult? Function(DateTime date)? updateUserDate,
    TResult? Function(String firstName)? updateUserFirstName,
    TResult? Function(String lastName)? updateUserLastName,
    TResult? Function(File file)? setProfilePhoto,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? signUpWithNumber,
    TResult Function(String userOtp, String phoneNumber)? verifyOtp,
    TResult Function()? signOut,
    TResult Function()? getCurrentUserId,
    TResult Function(DateTime date)? updateUserDate,
    TResult Function(String firstName)? updateUserFirstName,
    TResult Function(String lastName)? updateUserLastName,
    TResult Function(File file)? setProfilePhoto,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpWithNumberEvent value) signUpWithNumber,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetCurrentUserIdEvent value) getCurrentUserId,
    required TResult Function(UpdateUserDateEvent value) updateUserDate,
    required TResult Function(UpdateUserFirstNameEvent value)
        updateUserFirstName,
    required TResult Function(UpdateUserLastNameEvent value) updateUserLastName,
    required TResult Function(SetProfilePhotoEvent value) setProfilePhoto,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpWithNumberEvent value)? signUpWithNumber,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetCurrentUserIdEvent value)? getCurrentUserId,
    TResult? Function(UpdateUserDateEvent value)? updateUserDate,
    TResult? Function(UpdateUserFirstNameEvent value)? updateUserFirstName,
    TResult? Function(UpdateUserLastNameEvent value)? updateUserLastName,
    TResult? Function(SetProfilePhotoEvent value)? setProfilePhoto,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpWithNumberEvent value)? signUpWithNumber,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetCurrentUserIdEvent value)? getCurrentUserId,
    TResult Function(UpdateUserDateEvent value)? updateUserDate,
    TResult Function(UpdateUserFirstNameEvent value)? updateUserFirstName,
    TResult Function(UpdateUserLastNameEvent value)? updateUserLastName,
    TResult Function(SetProfilePhotoEvent value)? setProfilePhoto,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOutEvent implements AuthEvent {
  const factory SignOutEvent() = _$SignOutEventImpl;
}

/// @nodoc
abstract class _$$GetCurrentUserIdEventImplCopyWith<$Res> {
  factory _$$GetCurrentUserIdEventImplCopyWith(
          _$GetCurrentUserIdEventImpl value,
          $Res Function(_$GetCurrentUserIdEventImpl) then) =
      __$$GetCurrentUserIdEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentUserIdEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GetCurrentUserIdEventImpl>
    implements _$$GetCurrentUserIdEventImplCopyWith<$Res> {
  __$$GetCurrentUserIdEventImplCopyWithImpl(_$GetCurrentUserIdEventImpl _value,
      $Res Function(_$GetCurrentUserIdEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCurrentUserIdEventImpl implements GetCurrentUserIdEvent {
  const _$GetCurrentUserIdEventImpl();

  @override
  String toString() {
    return 'AuthEvent.getCurrentUserId()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCurrentUserIdEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) signUpWithNumber,
    required TResult Function(String userOtp, String phoneNumber) verifyOtp,
    required TResult Function() signOut,
    required TResult Function() getCurrentUserId,
    required TResult Function(DateTime date) updateUserDate,
    required TResult Function(String firstName) updateUserFirstName,
    required TResult Function(String lastName) updateUserLastName,
    required TResult Function(File file) setProfilePhoto,
  }) {
    return getCurrentUserId();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? signUpWithNumber,
    TResult? Function(String userOtp, String phoneNumber)? verifyOtp,
    TResult? Function()? signOut,
    TResult? Function()? getCurrentUserId,
    TResult? Function(DateTime date)? updateUserDate,
    TResult? Function(String firstName)? updateUserFirstName,
    TResult? Function(String lastName)? updateUserLastName,
    TResult? Function(File file)? setProfilePhoto,
  }) {
    return getCurrentUserId?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? signUpWithNumber,
    TResult Function(String userOtp, String phoneNumber)? verifyOtp,
    TResult Function()? signOut,
    TResult Function()? getCurrentUserId,
    TResult Function(DateTime date)? updateUserDate,
    TResult Function(String firstName)? updateUserFirstName,
    TResult Function(String lastName)? updateUserLastName,
    TResult Function(File file)? setProfilePhoto,
    required TResult orElse(),
  }) {
    if (getCurrentUserId != null) {
      return getCurrentUserId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpWithNumberEvent value) signUpWithNumber,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetCurrentUserIdEvent value) getCurrentUserId,
    required TResult Function(UpdateUserDateEvent value) updateUserDate,
    required TResult Function(UpdateUserFirstNameEvent value)
        updateUserFirstName,
    required TResult Function(UpdateUserLastNameEvent value) updateUserLastName,
    required TResult Function(SetProfilePhotoEvent value) setProfilePhoto,
  }) {
    return getCurrentUserId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpWithNumberEvent value)? signUpWithNumber,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetCurrentUserIdEvent value)? getCurrentUserId,
    TResult? Function(UpdateUserDateEvent value)? updateUserDate,
    TResult? Function(UpdateUserFirstNameEvent value)? updateUserFirstName,
    TResult? Function(UpdateUserLastNameEvent value)? updateUserLastName,
    TResult? Function(SetProfilePhotoEvent value)? setProfilePhoto,
  }) {
    return getCurrentUserId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpWithNumberEvent value)? signUpWithNumber,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetCurrentUserIdEvent value)? getCurrentUserId,
    TResult Function(UpdateUserDateEvent value)? updateUserDate,
    TResult Function(UpdateUserFirstNameEvent value)? updateUserFirstName,
    TResult Function(UpdateUserLastNameEvent value)? updateUserLastName,
    TResult Function(SetProfilePhotoEvent value)? setProfilePhoto,
    required TResult orElse(),
  }) {
    if (getCurrentUserId != null) {
      return getCurrentUserId(this);
    }
    return orElse();
  }
}

abstract class GetCurrentUserIdEvent implements AuthEvent {
  const factory GetCurrentUserIdEvent() = _$GetCurrentUserIdEventImpl;
}

/// @nodoc
abstract class _$$UpdateUserDateEventImplCopyWith<$Res> {
  factory _$$UpdateUserDateEventImplCopyWith(_$UpdateUserDateEventImpl value,
          $Res Function(_$UpdateUserDateEventImpl) then) =
      __$$UpdateUserDateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$UpdateUserDateEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateUserDateEventImpl>
    implements _$$UpdateUserDateEventImplCopyWith<$Res> {
  __$$UpdateUserDateEventImplCopyWithImpl(_$UpdateUserDateEventImpl _value,
      $Res Function(_$UpdateUserDateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$UpdateUserDateEventImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdateUserDateEventImpl implements UpdateUserDateEvent {
  const _$UpdateUserDateEventImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'AuthEvent.updateUserDate(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserDateEventImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserDateEventImplCopyWith<_$UpdateUserDateEventImpl> get copyWith =>
      __$$UpdateUserDateEventImplCopyWithImpl<_$UpdateUserDateEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) signUpWithNumber,
    required TResult Function(String userOtp, String phoneNumber) verifyOtp,
    required TResult Function() signOut,
    required TResult Function() getCurrentUserId,
    required TResult Function(DateTime date) updateUserDate,
    required TResult Function(String firstName) updateUserFirstName,
    required TResult Function(String lastName) updateUserLastName,
    required TResult Function(File file) setProfilePhoto,
  }) {
    return updateUserDate(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? signUpWithNumber,
    TResult? Function(String userOtp, String phoneNumber)? verifyOtp,
    TResult? Function()? signOut,
    TResult? Function()? getCurrentUserId,
    TResult? Function(DateTime date)? updateUserDate,
    TResult? Function(String firstName)? updateUserFirstName,
    TResult? Function(String lastName)? updateUserLastName,
    TResult? Function(File file)? setProfilePhoto,
  }) {
    return updateUserDate?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? signUpWithNumber,
    TResult Function(String userOtp, String phoneNumber)? verifyOtp,
    TResult Function()? signOut,
    TResult Function()? getCurrentUserId,
    TResult Function(DateTime date)? updateUserDate,
    TResult Function(String firstName)? updateUserFirstName,
    TResult Function(String lastName)? updateUserLastName,
    TResult Function(File file)? setProfilePhoto,
    required TResult orElse(),
  }) {
    if (updateUserDate != null) {
      return updateUserDate(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpWithNumberEvent value) signUpWithNumber,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetCurrentUserIdEvent value) getCurrentUserId,
    required TResult Function(UpdateUserDateEvent value) updateUserDate,
    required TResult Function(UpdateUserFirstNameEvent value)
        updateUserFirstName,
    required TResult Function(UpdateUserLastNameEvent value) updateUserLastName,
    required TResult Function(SetProfilePhotoEvent value) setProfilePhoto,
  }) {
    return updateUserDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpWithNumberEvent value)? signUpWithNumber,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetCurrentUserIdEvent value)? getCurrentUserId,
    TResult? Function(UpdateUserDateEvent value)? updateUserDate,
    TResult? Function(UpdateUserFirstNameEvent value)? updateUserFirstName,
    TResult? Function(UpdateUserLastNameEvent value)? updateUserLastName,
    TResult? Function(SetProfilePhotoEvent value)? setProfilePhoto,
  }) {
    return updateUserDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpWithNumberEvent value)? signUpWithNumber,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetCurrentUserIdEvent value)? getCurrentUserId,
    TResult Function(UpdateUserDateEvent value)? updateUserDate,
    TResult Function(UpdateUserFirstNameEvent value)? updateUserFirstName,
    TResult Function(UpdateUserLastNameEvent value)? updateUserLastName,
    TResult Function(SetProfilePhotoEvent value)? setProfilePhoto,
    required TResult orElse(),
  }) {
    if (updateUserDate != null) {
      return updateUserDate(this);
    }
    return orElse();
  }
}

abstract class UpdateUserDateEvent implements AuthEvent {
  const factory UpdateUserDateEvent(final DateTime date) =
      _$UpdateUserDateEventImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$UpdateUserDateEventImplCopyWith<_$UpdateUserDateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserFirstNameEventImplCopyWith<$Res> {
  factory _$$UpdateUserFirstNameEventImplCopyWith(
          _$UpdateUserFirstNameEventImpl value,
          $Res Function(_$UpdateUserFirstNameEventImpl) then) =
      __$$UpdateUserFirstNameEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName});
}

/// @nodoc
class __$$UpdateUserFirstNameEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateUserFirstNameEventImpl>
    implements _$$UpdateUserFirstNameEventImplCopyWith<$Res> {
  __$$UpdateUserFirstNameEventImplCopyWithImpl(
      _$UpdateUserFirstNameEventImpl _value,
      $Res Function(_$UpdateUserFirstNameEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
  }) {
    return _then(_$UpdateUserFirstNameEventImpl(
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateUserFirstNameEventImpl implements UpdateUserFirstNameEvent {
  const _$UpdateUserFirstNameEventImpl(this.firstName);

  @override
  final String firstName;

  @override
  String toString() {
    return 'AuthEvent.updateUserFirstName(firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserFirstNameEventImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserFirstNameEventImplCopyWith<_$UpdateUserFirstNameEventImpl>
      get copyWith => __$$UpdateUserFirstNameEventImplCopyWithImpl<
          _$UpdateUserFirstNameEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) signUpWithNumber,
    required TResult Function(String userOtp, String phoneNumber) verifyOtp,
    required TResult Function() signOut,
    required TResult Function() getCurrentUserId,
    required TResult Function(DateTime date) updateUserDate,
    required TResult Function(String firstName) updateUserFirstName,
    required TResult Function(String lastName) updateUserLastName,
    required TResult Function(File file) setProfilePhoto,
  }) {
    return updateUserFirstName(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? signUpWithNumber,
    TResult? Function(String userOtp, String phoneNumber)? verifyOtp,
    TResult? Function()? signOut,
    TResult? Function()? getCurrentUserId,
    TResult? Function(DateTime date)? updateUserDate,
    TResult? Function(String firstName)? updateUserFirstName,
    TResult? Function(String lastName)? updateUserLastName,
    TResult? Function(File file)? setProfilePhoto,
  }) {
    return updateUserFirstName?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? signUpWithNumber,
    TResult Function(String userOtp, String phoneNumber)? verifyOtp,
    TResult Function()? signOut,
    TResult Function()? getCurrentUserId,
    TResult Function(DateTime date)? updateUserDate,
    TResult Function(String firstName)? updateUserFirstName,
    TResult Function(String lastName)? updateUserLastName,
    TResult Function(File file)? setProfilePhoto,
    required TResult orElse(),
  }) {
    if (updateUserFirstName != null) {
      return updateUserFirstName(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpWithNumberEvent value) signUpWithNumber,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetCurrentUserIdEvent value) getCurrentUserId,
    required TResult Function(UpdateUserDateEvent value) updateUserDate,
    required TResult Function(UpdateUserFirstNameEvent value)
        updateUserFirstName,
    required TResult Function(UpdateUserLastNameEvent value) updateUserLastName,
    required TResult Function(SetProfilePhotoEvent value) setProfilePhoto,
  }) {
    return updateUserFirstName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpWithNumberEvent value)? signUpWithNumber,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetCurrentUserIdEvent value)? getCurrentUserId,
    TResult? Function(UpdateUserDateEvent value)? updateUserDate,
    TResult? Function(UpdateUserFirstNameEvent value)? updateUserFirstName,
    TResult? Function(UpdateUserLastNameEvent value)? updateUserLastName,
    TResult? Function(SetProfilePhotoEvent value)? setProfilePhoto,
  }) {
    return updateUserFirstName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpWithNumberEvent value)? signUpWithNumber,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetCurrentUserIdEvent value)? getCurrentUserId,
    TResult Function(UpdateUserDateEvent value)? updateUserDate,
    TResult Function(UpdateUserFirstNameEvent value)? updateUserFirstName,
    TResult Function(UpdateUserLastNameEvent value)? updateUserLastName,
    TResult Function(SetProfilePhotoEvent value)? setProfilePhoto,
    required TResult orElse(),
  }) {
    if (updateUserFirstName != null) {
      return updateUserFirstName(this);
    }
    return orElse();
  }
}

abstract class UpdateUserFirstNameEvent implements AuthEvent {
  const factory UpdateUserFirstNameEvent(final String firstName) =
      _$UpdateUserFirstNameEventImpl;

  String get firstName;
  @JsonKey(ignore: true)
  _$$UpdateUserFirstNameEventImplCopyWith<_$UpdateUserFirstNameEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserLastNameEventImplCopyWith<$Res> {
  factory _$$UpdateUserLastNameEventImplCopyWith(
          _$UpdateUserLastNameEventImpl value,
          $Res Function(_$UpdateUserLastNameEventImpl) then) =
      __$$UpdateUserLastNameEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lastName});
}

/// @nodoc
class __$$UpdateUserLastNameEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$UpdateUserLastNameEventImpl>
    implements _$$UpdateUserLastNameEventImplCopyWith<$Res> {
  __$$UpdateUserLastNameEventImplCopyWithImpl(
      _$UpdateUserLastNameEventImpl _value,
      $Res Function(_$UpdateUserLastNameEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastName = null,
  }) {
    return _then(_$UpdateUserLastNameEventImpl(
      null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateUserLastNameEventImpl implements UpdateUserLastNameEvent {
  const _$UpdateUserLastNameEventImpl(this.lastName);

  @override
  final String lastName;

  @override
  String toString() {
    return 'AuthEvent.updateUserLastName(lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserLastNameEventImpl &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserLastNameEventImplCopyWith<_$UpdateUserLastNameEventImpl>
      get copyWith => __$$UpdateUserLastNameEventImplCopyWithImpl<
          _$UpdateUserLastNameEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) signUpWithNumber,
    required TResult Function(String userOtp, String phoneNumber) verifyOtp,
    required TResult Function() signOut,
    required TResult Function() getCurrentUserId,
    required TResult Function(DateTime date) updateUserDate,
    required TResult Function(String firstName) updateUserFirstName,
    required TResult Function(String lastName) updateUserLastName,
    required TResult Function(File file) setProfilePhoto,
  }) {
    return updateUserLastName(lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? signUpWithNumber,
    TResult? Function(String userOtp, String phoneNumber)? verifyOtp,
    TResult? Function()? signOut,
    TResult? Function()? getCurrentUserId,
    TResult? Function(DateTime date)? updateUserDate,
    TResult? Function(String firstName)? updateUserFirstName,
    TResult? Function(String lastName)? updateUserLastName,
    TResult? Function(File file)? setProfilePhoto,
  }) {
    return updateUserLastName?.call(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? signUpWithNumber,
    TResult Function(String userOtp, String phoneNumber)? verifyOtp,
    TResult Function()? signOut,
    TResult Function()? getCurrentUserId,
    TResult Function(DateTime date)? updateUserDate,
    TResult Function(String firstName)? updateUserFirstName,
    TResult Function(String lastName)? updateUserLastName,
    TResult Function(File file)? setProfilePhoto,
    required TResult orElse(),
  }) {
    if (updateUserLastName != null) {
      return updateUserLastName(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpWithNumberEvent value) signUpWithNumber,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetCurrentUserIdEvent value) getCurrentUserId,
    required TResult Function(UpdateUserDateEvent value) updateUserDate,
    required TResult Function(UpdateUserFirstNameEvent value)
        updateUserFirstName,
    required TResult Function(UpdateUserLastNameEvent value) updateUserLastName,
    required TResult Function(SetProfilePhotoEvent value) setProfilePhoto,
  }) {
    return updateUserLastName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpWithNumberEvent value)? signUpWithNumber,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetCurrentUserIdEvent value)? getCurrentUserId,
    TResult? Function(UpdateUserDateEvent value)? updateUserDate,
    TResult? Function(UpdateUserFirstNameEvent value)? updateUserFirstName,
    TResult? Function(UpdateUserLastNameEvent value)? updateUserLastName,
    TResult? Function(SetProfilePhotoEvent value)? setProfilePhoto,
  }) {
    return updateUserLastName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpWithNumberEvent value)? signUpWithNumber,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetCurrentUserIdEvent value)? getCurrentUserId,
    TResult Function(UpdateUserDateEvent value)? updateUserDate,
    TResult Function(UpdateUserFirstNameEvent value)? updateUserFirstName,
    TResult Function(UpdateUserLastNameEvent value)? updateUserLastName,
    TResult Function(SetProfilePhotoEvent value)? setProfilePhoto,
    required TResult orElse(),
  }) {
    if (updateUserLastName != null) {
      return updateUserLastName(this);
    }
    return orElse();
  }
}

abstract class UpdateUserLastNameEvent implements AuthEvent {
  const factory UpdateUserLastNameEvent(final String lastName) =
      _$UpdateUserLastNameEventImpl;

  String get lastName;
  @JsonKey(ignore: true)
  _$$UpdateUserLastNameEventImplCopyWith<_$UpdateUserLastNameEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetProfilePhotoEventImplCopyWith<$Res> {
  factory _$$SetProfilePhotoEventImplCopyWith(_$SetProfilePhotoEventImpl value,
          $Res Function(_$SetProfilePhotoEventImpl) then) =
      __$$SetProfilePhotoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File file});
}

/// @nodoc
class __$$SetProfilePhotoEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SetProfilePhotoEventImpl>
    implements _$$SetProfilePhotoEventImplCopyWith<$Res> {
  __$$SetProfilePhotoEventImplCopyWithImpl(_$SetProfilePhotoEventImpl _value,
      $Res Function(_$SetProfilePhotoEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$SetProfilePhotoEventImpl(
      null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$SetProfilePhotoEventImpl implements SetProfilePhotoEvent {
  const _$SetProfilePhotoEventImpl(this.file);

  @override
  final File file;

  @override
  String toString() {
    return 'AuthEvent.setProfilePhoto(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetProfilePhotoEventImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetProfilePhotoEventImplCopyWith<_$SetProfilePhotoEventImpl>
      get copyWith =>
          __$$SetProfilePhotoEventImplCopyWithImpl<_$SetProfilePhotoEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) signUpWithNumber,
    required TResult Function(String userOtp, String phoneNumber) verifyOtp,
    required TResult Function() signOut,
    required TResult Function() getCurrentUserId,
    required TResult Function(DateTime date) updateUserDate,
    required TResult Function(String firstName) updateUserFirstName,
    required TResult Function(String lastName) updateUserLastName,
    required TResult Function(File file) setProfilePhoto,
  }) {
    return setProfilePhoto(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? signUpWithNumber,
    TResult? Function(String userOtp, String phoneNumber)? verifyOtp,
    TResult? Function()? signOut,
    TResult? Function()? getCurrentUserId,
    TResult? Function(DateTime date)? updateUserDate,
    TResult? Function(String firstName)? updateUserFirstName,
    TResult? Function(String lastName)? updateUserLastName,
    TResult? Function(File file)? setProfilePhoto,
  }) {
    return setProfilePhoto?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? signUpWithNumber,
    TResult Function(String userOtp, String phoneNumber)? verifyOtp,
    TResult Function()? signOut,
    TResult Function()? getCurrentUserId,
    TResult Function(DateTime date)? updateUserDate,
    TResult Function(String firstName)? updateUserFirstName,
    TResult Function(String lastName)? updateUserLastName,
    TResult Function(File file)? setProfilePhoto,
    required TResult orElse(),
  }) {
    if (setProfilePhoto != null) {
      return setProfilePhoto(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpWithNumberEvent value) signUpWithNumber,
    required TResult Function(VerifyOtpEvent value) verifyOtp,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(GetCurrentUserIdEvent value) getCurrentUserId,
    required TResult Function(UpdateUserDateEvent value) updateUserDate,
    required TResult Function(UpdateUserFirstNameEvent value)
        updateUserFirstName,
    required TResult Function(UpdateUserLastNameEvent value) updateUserLastName,
    required TResult Function(SetProfilePhotoEvent value) setProfilePhoto,
  }) {
    return setProfilePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpWithNumberEvent value)? signUpWithNumber,
    TResult? Function(VerifyOtpEvent value)? verifyOtp,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(GetCurrentUserIdEvent value)? getCurrentUserId,
    TResult? Function(UpdateUserDateEvent value)? updateUserDate,
    TResult? Function(UpdateUserFirstNameEvent value)? updateUserFirstName,
    TResult? Function(UpdateUserLastNameEvent value)? updateUserLastName,
    TResult? Function(SetProfilePhotoEvent value)? setProfilePhoto,
  }) {
    return setProfilePhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpWithNumberEvent value)? signUpWithNumber,
    TResult Function(VerifyOtpEvent value)? verifyOtp,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(GetCurrentUserIdEvent value)? getCurrentUserId,
    TResult Function(UpdateUserDateEvent value)? updateUserDate,
    TResult Function(UpdateUserFirstNameEvent value)? updateUserFirstName,
    TResult Function(UpdateUserLastNameEvent value)? updateUserLastName,
    TResult Function(SetProfilePhotoEvent value)? setProfilePhoto,
    required TResult orElse(),
  }) {
    if (setProfilePhoto != null) {
      return setProfilePhoto(this);
    }
    return orElse();
  }
}

abstract class SetProfilePhotoEvent implements AuthEvent {
  const factory SetProfilePhotoEvent(final File file) =
      _$SetProfilePhotoEventImpl;

  File get file;
  @JsonKey(ignore: true)
  _$$SetProfilePhotoEventImplCopyWith<_$SetProfilePhotoEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(user_entity.User user) authenticated,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(user_entity.User user)? authenticated,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(user_entity.User user)? authenticated,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(_Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnAuthenticated value)? unauthenticated,
    TResult? Function(_Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnAuthenticatedImplCopyWith<$Res> {
  factory _$$UnAuthenticatedImplCopyWith(_$UnAuthenticatedImpl value,
          $Res Function(_$UnAuthenticatedImpl) then) =
      __$$UnAuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnAuthenticatedImpl>
    implements _$$UnAuthenticatedImplCopyWith<$Res> {
  __$$UnAuthenticatedImplCopyWithImpl(
      _$UnAuthenticatedImpl _value, $Res Function(_$UnAuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnAuthenticatedImpl implements UnAuthenticated {
  const _$UnAuthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(user_entity.User user) authenticated,
    required TResult Function(String error) error,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(user_entity.User user)? authenticated,
    TResult? Function(String error)? error,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(user_entity.User user)? authenticated,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(_Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(_Error value) error,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnAuthenticated value)? unauthenticated,
    TResult? Function(_Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(_Error value)? error,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticated implements AuthState {
  const factory UnAuthenticated() = _$UnAuthenticatedImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'AuthState.loading()';
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
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(user_entity.User user) authenticated,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(user_entity.User user)? authenticated,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(user_entity.User user)? authenticated,
    TResult Function(String error)? error,
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
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(_Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnAuthenticated value)? unauthenticated,
    TResult? Function(_Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({user_entity.User user});
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthenticatedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as user_entity.User,
    ));
  }
}

/// @nodoc

class _$AuthenticatedImpl implements Authenticated {
  const _$AuthenticatedImpl(this.user);

  @override
  final user_entity.User user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      __$$AuthenticatedImplCopyWithImpl<_$AuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(user_entity.User user) authenticated,
    required TResult Function(String error) error,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(user_entity.User user)? authenticated,
    TResult? Function(String error)? error,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(user_entity.User user)? authenticated,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(_Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(_Error value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnAuthenticated value)? unauthenticated,
    TResult? Function(_Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(_Error value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated(final user_entity.User user) =
      _$AuthenticatedImpl;

  user_entity.User get user;
  @JsonKey(ignore: true)
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthenticated,
    required TResult Function() loading,
    required TResult Function(user_entity.User user) authenticated,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthenticated,
    TResult? Function()? loading,
    TResult? Function(user_entity.User user)? authenticated,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthenticated,
    TResult Function()? loading,
    TResult Function(user_entity.User user)? authenticated,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(_Loading value) loading,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnAuthenticated value)? unauthenticated,
    TResult? Function(_Loading value)? loading,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(_Loading value)? loading,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
