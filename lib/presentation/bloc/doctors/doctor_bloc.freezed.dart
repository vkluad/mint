// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DoctorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDoctors,
    required TResult Function(String doctorId) markAsFavourite,
    required TResult Function(String doctorId) removeFromFavourites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDoctors,
    TResult? Function(String doctorId)? markAsFavourite,
    TResult? Function(String doctorId)? removeFromFavourites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDoctors,
    TResult Function(String doctorId)? markAsFavourite,
    TResult Function(String doctorId)? removeFromFavourites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDoctorsEvent value) getDoctors,
    required TResult Function(MarkAsFavouriteEvent value) markAsFavourite,
    required TResult Function(RemoveFromFavouritesEvent value)
        removeFromFavourites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDoctorsEvent value)? getDoctors,
    TResult? Function(MarkAsFavouriteEvent value)? markAsFavourite,
    TResult? Function(RemoveFromFavouritesEvent value)? removeFromFavourites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDoctorsEvent value)? getDoctors,
    TResult Function(MarkAsFavouriteEvent value)? markAsFavourite,
    TResult Function(RemoveFromFavouritesEvent value)? removeFromFavourites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorEventCopyWith<$Res> {
  factory $DoctorEventCopyWith(
          DoctorEvent value, $Res Function(DoctorEvent) then) =
      _$DoctorEventCopyWithImpl<$Res, DoctorEvent>;
}

/// @nodoc
class _$DoctorEventCopyWithImpl<$Res, $Val extends DoctorEvent>
    implements $DoctorEventCopyWith<$Res> {
  _$DoctorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDoctorsEventImplCopyWith<$Res> {
  factory _$$GetDoctorsEventImplCopyWith(_$GetDoctorsEventImpl value,
          $Res Function(_$GetDoctorsEventImpl) then) =
      __$$GetDoctorsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDoctorsEventImplCopyWithImpl<$Res>
    extends _$DoctorEventCopyWithImpl<$Res, _$GetDoctorsEventImpl>
    implements _$$GetDoctorsEventImplCopyWith<$Res> {
  __$$GetDoctorsEventImplCopyWithImpl(
      _$GetDoctorsEventImpl _value, $Res Function(_$GetDoctorsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDoctorsEventImpl implements GetDoctorsEvent {
  const _$GetDoctorsEventImpl();

  @override
  String toString() {
    return 'DoctorEvent.getDoctors()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDoctorsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDoctors,
    required TResult Function(String doctorId) markAsFavourite,
    required TResult Function(String doctorId) removeFromFavourites,
  }) {
    return getDoctors();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDoctors,
    TResult? Function(String doctorId)? markAsFavourite,
    TResult? Function(String doctorId)? removeFromFavourites,
  }) {
    return getDoctors?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDoctors,
    TResult Function(String doctorId)? markAsFavourite,
    TResult Function(String doctorId)? removeFromFavourites,
    required TResult orElse(),
  }) {
    if (getDoctors != null) {
      return getDoctors();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDoctorsEvent value) getDoctors,
    required TResult Function(MarkAsFavouriteEvent value) markAsFavourite,
    required TResult Function(RemoveFromFavouritesEvent value)
        removeFromFavourites,
  }) {
    return getDoctors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDoctorsEvent value)? getDoctors,
    TResult? Function(MarkAsFavouriteEvent value)? markAsFavourite,
    TResult? Function(RemoveFromFavouritesEvent value)? removeFromFavourites,
  }) {
    return getDoctors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDoctorsEvent value)? getDoctors,
    TResult Function(MarkAsFavouriteEvent value)? markAsFavourite,
    TResult Function(RemoveFromFavouritesEvent value)? removeFromFavourites,
    required TResult orElse(),
  }) {
    if (getDoctors != null) {
      return getDoctors(this);
    }
    return orElse();
  }
}

abstract class GetDoctorsEvent implements DoctorEvent {
  const factory GetDoctorsEvent() = _$GetDoctorsEventImpl;
}

/// @nodoc
abstract class _$$MarkAsFavouriteEventImplCopyWith<$Res> {
  factory _$$MarkAsFavouriteEventImplCopyWith(_$MarkAsFavouriteEventImpl value,
          $Res Function(_$MarkAsFavouriteEventImpl) then) =
      __$$MarkAsFavouriteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String doctorId});
}

/// @nodoc
class __$$MarkAsFavouriteEventImplCopyWithImpl<$Res>
    extends _$DoctorEventCopyWithImpl<$Res, _$MarkAsFavouriteEventImpl>
    implements _$$MarkAsFavouriteEventImplCopyWith<$Res> {
  __$$MarkAsFavouriteEventImplCopyWithImpl(_$MarkAsFavouriteEventImpl _value,
      $Res Function(_$MarkAsFavouriteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = null,
  }) {
    return _then(_$MarkAsFavouriteEventImpl(
      null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkAsFavouriteEventImpl implements MarkAsFavouriteEvent {
  const _$MarkAsFavouriteEventImpl(this.doctorId);

  @override
  final String doctorId;

  @override
  String toString() {
    return 'DoctorEvent.markAsFavourite(doctorId: $doctorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAsFavouriteEventImpl &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doctorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkAsFavouriteEventImplCopyWith<_$MarkAsFavouriteEventImpl>
      get copyWith =>
          __$$MarkAsFavouriteEventImplCopyWithImpl<_$MarkAsFavouriteEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDoctors,
    required TResult Function(String doctorId) markAsFavourite,
    required TResult Function(String doctorId) removeFromFavourites,
  }) {
    return markAsFavourite(doctorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDoctors,
    TResult? Function(String doctorId)? markAsFavourite,
    TResult? Function(String doctorId)? removeFromFavourites,
  }) {
    return markAsFavourite?.call(doctorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDoctors,
    TResult Function(String doctorId)? markAsFavourite,
    TResult Function(String doctorId)? removeFromFavourites,
    required TResult orElse(),
  }) {
    if (markAsFavourite != null) {
      return markAsFavourite(doctorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDoctorsEvent value) getDoctors,
    required TResult Function(MarkAsFavouriteEvent value) markAsFavourite,
    required TResult Function(RemoveFromFavouritesEvent value)
        removeFromFavourites,
  }) {
    return markAsFavourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDoctorsEvent value)? getDoctors,
    TResult? Function(MarkAsFavouriteEvent value)? markAsFavourite,
    TResult? Function(RemoveFromFavouritesEvent value)? removeFromFavourites,
  }) {
    return markAsFavourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDoctorsEvent value)? getDoctors,
    TResult Function(MarkAsFavouriteEvent value)? markAsFavourite,
    TResult Function(RemoveFromFavouritesEvent value)? removeFromFavourites,
    required TResult orElse(),
  }) {
    if (markAsFavourite != null) {
      return markAsFavourite(this);
    }
    return orElse();
  }
}

abstract class MarkAsFavouriteEvent implements DoctorEvent {
  const factory MarkAsFavouriteEvent(final String doctorId) =
      _$MarkAsFavouriteEventImpl;

  String get doctorId;
  @JsonKey(ignore: true)
  _$$MarkAsFavouriteEventImplCopyWith<_$MarkAsFavouriteEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromFavouritesEventImplCopyWith<$Res> {
  factory _$$RemoveFromFavouritesEventImplCopyWith(
          _$RemoveFromFavouritesEventImpl value,
          $Res Function(_$RemoveFromFavouritesEventImpl) then) =
      __$$RemoveFromFavouritesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String doctorId});
}

/// @nodoc
class __$$RemoveFromFavouritesEventImplCopyWithImpl<$Res>
    extends _$DoctorEventCopyWithImpl<$Res, _$RemoveFromFavouritesEventImpl>
    implements _$$RemoveFromFavouritesEventImplCopyWith<$Res> {
  __$$RemoveFromFavouritesEventImplCopyWithImpl(
      _$RemoveFromFavouritesEventImpl _value,
      $Res Function(_$RemoveFromFavouritesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = null,
  }) {
    return _then(_$RemoveFromFavouritesEventImpl(
      null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveFromFavouritesEventImpl implements RemoveFromFavouritesEvent {
  const _$RemoveFromFavouritesEventImpl(this.doctorId);

  @override
  final String doctorId;

  @override
  String toString() {
    return 'DoctorEvent.removeFromFavourites(doctorId: $doctorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromFavouritesEventImpl &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doctorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromFavouritesEventImplCopyWith<_$RemoveFromFavouritesEventImpl>
      get copyWith => __$$RemoveFromFavouritesEventImplCopyWithImpl<
          _$RemoveFromFavouritesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDoctors,
    required TResult Function(String doctorId) markAsFavourite,
    required TResult Function(String doctorId) removeFromFavourites,
  }) {
    return removeFromFavourites(doctorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDoctors,
    TResult? Function(String doctorId)? markAsFavourite,
    TResult? Function(String doctorId)? removeFromFavourites,
  }) {
    return removeFromFavourites?.call(doctorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDoctors,
    TResult Function(String doctorId)? markAsFavourite,
    TResult Function(String doctorId)? removeFromFavourites,
    required TResult orElse(),
  }) {
    if (removeFromFavourites != null) {
      return removeFromFavourites(doctorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDoctorsEvent value) getDoctors,
    required TResult Function(MarkAsFavouriteEvent value) markAsFavourite,
    required TResult Function(RemoveFromFavouritesEvent value)
        removeFromFavourites,
  }) {
    return removeFromFavourites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDoctorsEvent value)? getDoctors,
    TResult? Function(MarkAsFavouriteEvent value)? markAsFavourite,
    TResult? Function(RemoveFromFavouritesEvent value)? removeFromFavourites,
  }) {
    return removeFromFavourites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDoctorsEvent value)? getDoctors,
    TResult Function(MarkAsFavouriteEvent value)? markAsFavourite,
    TResult Function(RemoveFromFavouritesEvent value)? removeFromFavourites,
    required TResult orElse(),
  }) {
    if (removeFromFavourites != null) {
      return removeFromFavourites(this);
    }
    return orElse();
  }
}

abstract class RemoveFromFavouritesEvent implements DoctorEvent {
  const factory RemoveFromFavouritesEvent(final String doctorId) =
      _$RemoveFromFavouritesEventImpl;

  String get doctorId;
  @JsonKey(ignore: true)
  _$$RemoveFromFavouritesEventImplCopyWith<_$RemoveFromFavouritesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DoctorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Doctor> doctors) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Doctor> doctors)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Doctor> doctors)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorStateCopyWith<$Res> {
  factory $DoctorStateCopyWith(
          DoctorState value, $Res Function(DoctorState) then) =
      _$DoctorStateCopyWithImpl<$Res, DoctorState>;
}

/// @nodoc
class _$DoctorStateCopyWithImpl<$Res, $Val extends DoctorState>
    implements $DoctorStateCopyWith<$Res> {
  _$DoctorStateCopyWithImpl(this._value, this._then);

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
    extends _$DoctorStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'DoctorState.initial()';
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
    required TResult Function() loading,
    required TResult Function(List<Doctor> doctors) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Doctor> doctors)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Doctor> doctors)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DoctorState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DoctorStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'DoctorState.loading()';
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
    required TResult Function() loading,
    required TResult Function(List<Doctor> doctors) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Doctor> doctors)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Doctor> doctors)? loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DoctorState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Doctor> doctors});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$DoctorStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctors = null,
  }) {
    return _then(_$LoadedImpl(
      null == doctors
          ? _value._doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(final List<Doctor> doctors) : _doctors = doctors;

  final List<Doctor> _doctors;
  @override
  List<Doctor> get doctors {
    if (_doctors is EqualUnmodifiableListView) return _doctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctors);
  }

  @override
  String toString() {
    return 'DoctorState.loaded(doctors: $doctors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._doctors, _doctors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_doctors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Doctor> doctors) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(doctors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Doctor> doctors)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(doctors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Doctor> doctors)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(doctors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements DoctorState {
  const factory Loaded(final List<Doctor> doctors) = _$LoadedImpl;

  List<Doctor> get doctors;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
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
    extends _$DoctorStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'DoctorState.error(error: $error)';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Doctor> doctors) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Doctor> doctors)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Doctor> doctors)? loaded,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DoctorState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
