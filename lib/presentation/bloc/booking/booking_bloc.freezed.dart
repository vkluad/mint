// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBooks,
    required TResult Function(
            int price, String doctorId, DateTime time, String? description)
        createBooks,
    required TResult Function(String bookingId, String doctorId) removeBooks,
    required TResult Function(
            String bookingId, String doctorId, DateTime newDate)
        updateBooks,
    required TResult Function(String bookingId) updateBookingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBooks,
    TResult? Function(
            int price, String doctorId, DateTime time, String? description)?
        createBooks,
    TResult? Function(String bookingId, String doctorId)? removeBooks,
    TResult? Function(String bookingId, String doctorId, DateTime newDate)?
        updateBooks,
    TResult? Function(String bookingId)? updateBookingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBooks,
    TResult Function(
            int price, String doctorId, DateTime time, String? description)?
        createBooks,
    TResult Function(String bookingId, String doctorId)? removeBooks,
    TResult Function(String bookingId, String doctorId, DateTime newDate)?
        updateBooks,
    TResult Function(String bookingId)? updateBookingStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBookingsEvent value) getBooks,
    required TResult Function(CreateBookingEvent value) createBooks,
    required TResult Function(RemoveBookingEvent value) removeBooks,
    required TResult Function(UpdateBookingTimeEvent value) updateBooks,
    required TResult Function(UpdateBookingStatusEvent value)
        updateBookingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBookingsEvent value)? getBooks,
    TResult? Function(CreateBookingEvent value)? createBooks,
    TResult? Function(RemoveBookingEvent value)? removeBooks,
    TResult? Function(UpdateBookingTimeEvent value)? updateBooks,
    TResult? Function(UpdateBookingStatusEvent value)? updateBookingStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBookingsEvent value)? getBooks,
    TResult Function(CreateBookingEvent value)? createBooks,
    TResult Function(RemoveBookingEvent value)? removeBooks,
    TResult Function(UpdateBookingTimeEvent value)? updateBooks,
    TResult Function(UpdateBookingStatusEvent value)? updateBookingStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingEventCopyWith<$Res> {
  factory $BookingEventCopyWith(
          BookingEvent value, $Res Function(BookingEvent) then) =
      _$BookingEventCopyWithImpl<$Res, BookingEvent>;
}

/// @nodoc
class _$BookingEventCopyWithImpl<$Res, $Val extends BookingEvent>
    implements $BookingEventCopyWith<$Res> {
  _$BookingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetBookingsEventImplCopyWith<$Res> {
  factory _$$GetBookingsEventImplCopyWith(_$GetBookingsEventImpl value,
          $Res Function(_$GetBookingsEventImpl) then) =
      __$$GetBookingsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBookingsEventImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$GetBookingsEventImpl>
    implements _$$GetBookingsEventImplCopyWith<$Res> {
  __$$GetBookingsEventImplCopyWithImpl(_$GetBookingsEventImpl _value,
      $Res Function(_$GetBookingsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBookingsEventImpl implements GetBookingsEvent {
  const _$GetBookingsEventImpl();

  @override
  String toString() {
    return 'BookingEvent.getBooks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBookingsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBooks,
    required TResult Function(
            int price, String doctorId, DateTime time, String? description)
        createBooks,
    required TResult Function(String bookingId, String doctorId) removeBooks,
    required TResult Function(
            String bookingId, String doctorId, DateTime newDate)
        updateBooks,
    required TResult Function(String bookingId) updateBookingStatus,
  }) {
    return getBooks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBooks,
    TResult? Function(
            int price, String doctorId, DateTime time, String? description)?
        createBooks,
    TResult? Function(String bookingId, String doctorId)? removeBooks,
    TResult? Function(String bookingId, String doctorId, DateTime newDate)?
        updateBooks,
    TResult? Function(String bookingId)? updateBookingStatus,
  }) {
    return getBooks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBooks,
    TResult Function(
            int price, String doctorId, DateTime time, String? description)?
        createBooks,
    TResult Function(String bookingId, String doctorId)? removeBooks,
    TResult Function(String bookingId, String doctorId, DateTime newDate)?
        updateBooks,
    TResult Function(String bookingId)? updateBookingStatus,
    required TResult orElse(),
  }) {
    if (getBooks != null) {
      return getBooks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBookingsEvent value) getBooks,
    required TResult Function(CreateBookingEvent value) createBooks,
    required TResult Function(RemoveBookingEvent value) removeBooks,
    required TResult Function(UpdateBookingTimeEvent value) updateBooks,
    required TResult Function(UpdateBookingStatusEvent value)
        updateBookingStatus,
  }) {
    return getBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBookingsEvent value)? getBooks,
    TResult? Function(CreateBookingEvent value)? createBooks,
    TResult? Function(RemoveBookingEvent value)? removeBooks,
    TResult? Function(UpdateBookingTimeEvent value)? updateBooks,
    TResult? Function(UpdateBookingStatusEvent value)? updateBookingStatus,
  }) {
    return getBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBookingsEvent value)? getBooks,
    TResult Function(CreateBookingEvent value)? createBooks,
    TResult Function(RemoveBookingEvent value)? removeBooks,
    TResult Function(UpdateBookingTimeEvent value)? updateBooks,
    TResult Function(UpdateBookingStatusEvent value)? updateBookingStatus,
    required TResult orElse(),
  }) {
    if (getBooks != null) {
      return getBooks(this);
    }
    return orElse();
  }
}

abstract class GetBookingsEvent implements BookingEvent {
  const factory GetBookingsEvent() = _$GetBookingsEventImpl;
}

/// @nodoc
abstract class _$$CreateBookingEventImplCopyWith<$Res> {
  factory _$$CreateBookingEventImplCopyWith(_$CreateBookingEventImpl value,
          $Res Function(_$CreateBookingEventImpl) then) =
      __$$CreateBookingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int price, String doctorId, DateTime time, String? description});
}

/// @nodoc
class __$$CreateBookingEventImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$CreateBookingEventImpl>
    implements _$$CreateBookingEventImplCopyWith<$Res> {
  __$$CreateBookingEventImplCopyWithImpl(_$CreateBookingEventImpl _value,
      $Res Function(_$CreateBookingEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? doctorId = null,
    Object? time = null,
    Object? description = freezed,
  }) {
    return _then(_$CreateBookingEventImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      doctorId: null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateBookingEventImpl implements CreateBookingEvent {
  const _$CreateBookingEventImpl(
      {required this.price,
      required this.doctorId,
      required this.time,
      this.description});

  @override
  final int price;
  @override
  final String doctorId;
  @override
  final DateTime time;
  @override
  final String? description;

  @override
  String toString() {
    return 'BookingEvent.createBooks(price: $price, doctorId: $doctorId, time: $time, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBookingEventImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, price, doctorId, time, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBookingEventImplCopyWith<_$CreateBookingEventImpl> get copyWith =>
      __$$CreateBookingEventImplCopyWithImpl<_$CreateBookingEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBooks,
    required TResult Function(
            int price, String doctorId, DateTime time, String? description)
        createBooks,
    required TResult Function(String bookingId, String doctorId) removeBooks,
    required TResult Function(
            String bookingId, String doctorId, DateTime newDate)
        updateBooks,
    required TResult Function(String bookingId) updateBookingStatus,
  }) {
    return createBooks(price, doctorId, time, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBooks,
    TResult? Function(
            int price, String doctorId, DateTime time, String? description)?
        createBooks,
    TResult? Function(String bookingId, String doctorId)? removeBooks,
    TResult? Function(String bookingId, String doctorId, DateTime newDate)?
        updateBooks,
    TResult? Function(String bookingId)? updateBookingStatus,
  }) {
    return createBooks?.call(price, doctorId, time, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBooks,
    TResult Function(
            int price, String doctorId, DateTime time, String? description)?
        createBooks,
    TResult Function(String bookingId, String doctorId)? removeBooks,
    TResult Function(String bookingId, String doctorId, DateTime newDate)?
        updateBooks,
    TResult Function(String bookingId)? updateBookingStatus,
    required TResult orElse(),
  }) {
    if (createBooks != null) {
      return createBooks(price, doctorId, time, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBookingsEvent value) getBooks,
    required TResult Function(CreateBookingEvent value) createBooks,
    required TResult Function(RemoveBookingEvent value) removeBooks,
    required TResult Function(UpdateBookingTimeEvent value) updateBooks,
    required TResult Function(UpdateBookingStatusEvent value)
        updateBookingStatus,
  }) {
    return createBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBookingsEvent value)? getBooks,
    TResult? Function(CreateBookingEvent value)? createBooks,
    TResult? Function(RemoveBookingEvent value)? removeBooks,
    TResult? Function(UpdateBookingTimeEvent value)? updateBooks,
    TResult? Function(UpdateBookingStatusEvent value)? updateBookingStatus,
  }) {
    return createBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBookingsEvent value)? getBooks,
    TResult Function(CreateBookingEvent value)? createBooks,
    TResult Function(RemoveBookingEvent value)? removeBooks,
    TResult Function(UpdateBookingTimeEvent value)? updateBooks,
    TResult Function(UpdateBookingStatusEvent value)? updateBookingStatus,
    required TResult orElse(),
  }) {
    if (createBooks != null) {
      return createBooks(this);
    }
    return orElse();
  }
}

abstract class CreateBookingEvent implements BookingEvent {
  const factory CreateBookingEvent(
      {required final int price,
      required final String doctorId,
      required final DateTime time,
      final String? description}) = _$CreateBookingEventImpl;

  int get price;
  String get doctorId;
  DateTime get time;
  String? get description;
  @JsonKey(ignore: true)
  _$$CreateBookingEventImplCopyWith<_$CreateBookingEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveBookingEventImplCopyWith<$Res> {
  factory _$$RemoveBookingEventImplCopyWith(_$RemoveBookingEventImpl value,
          $Res Function(_$RemoveBookingEventImpl) then) =
      __$$RemoveBookingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookingId, String doctorId});
}

/// @nodoc
class __$$RemoveBookingEventImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$RemoveBookingEventImpl>
    implements _$$RemoveBookingEventImplCopyWith<$Res> {
  __$$RemoveBookingEventImplCopyWithImpl(_$RemoveBookingEventImpl _value,
      $Res Function(_$RemoveBookingEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
    Object? doctorId = null,
  }) {
    return _then(_$RemoveBookingEventImpl(
      null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
      null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveBookingEventImpl implements RemoveBookingEvent {
  const _$RemoveBookingEventImpl(this.bookingId, this.doctorId);

  @override
  final String bookingId;
  @override
  final String doctorId;

  @override
  String toString() {
    return 'BookingEvent.removeBooks(bookingId: $bookingId, doctorId: $doctorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveBookingEventImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId, doctorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveBookingEventImplCopyWith<_$RemoveBookingEventImpl> get copyWith =>
      __$$RemoveBookingEventImplCopyWithImpl<_$RemoveBookingEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBooks,
    required TResult Function(
            int price, String doctorId, DateTime time, String? description)
        createBooks,
    required TResult Function(String bookingId, String doctorId) removeBooks,
    required TResult Function(
            String bookingId, String doctorId, DateTime newDate)
        updateBooks,
    required TResult Function(String bookingId) updateBookingStatus,
  }) {
    return removeBooks(bookingId, doctorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBooks,
    TResult? Function(
            int price, String doctorId, DateTime time, String? description)?
        createBooks,
    TResult? Function(String bookingId, String doctorId)? removeBooks,
    TResult? Function(String bookingId, String doctorId, DateTime newDate)?
        updateBooks,
    TResult? Function(String bookingId)? updateBookingStatus,
  }) {
    return removeBooks?.call(bookingId, doctorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBooks,
    TResult Function(
            int price, String doctorId, DateTime time, String? description)?
        createBooks,
    TResult Function(String bookingId, String doctorId)? removeBooks,
    TResult Function(String bookingId, String doctorId, DateTime newDate)?
        updateBooks,
    TResult Function(String bookingId)? updateBookingStatus,
    required TResult orElse(),
  }) {
    if (removeBooks != null) {
      return removeBooks(bookingId, doctorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBookingsEvent value) getBooks,
    required TResult Function(CreateBookingEvent value) createBooks,
    required TResult Function(RemoveBookingEvent value) removeBooks,
    required TResult Function(UpdateBookingTimeEvent value) updateBooks,
    required TResult Function(UpdateBookingStatusEvent value)
        updateBookingStatus,
  }) {
    return removeBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBookingsEvent value)? getBooks,
    TResult? Function(CreateBookingEvent value)? createBooks,
    TResult? Function(RemoveBookingEvent value)? removeBooks,
    TResult? Function(UpdateBookingTimeEvent value)? updateBooks,
    TResult? Function(UpdateBookingStatusEvent value)? updateBookingStatus,
  }) {
    return removeBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBookingsEvent value)? getBooks,
    TResult Function(CreateBookingEvent value)? createBooks,
    TResult Function(RemoveBookingEvent value)? removeBooks,
    TResult Function(UpdateBookingTimeEvent value)? updateBooks,
    TResult Function(UpdateBookingStatusEvent value)? updateBookingStatus,
    required TResult orElse(),
  }) {
    if (removeBooks != null) {
      return removeBooks(this);
    }
    return orElse();
  }
}

abstract class RemoveBookingEvent implements BookingEvent {
  const factory RemoveBookingEvent(
      final String bookingId, final String doctorId) = _$RemoveBookingEventImpl;

  String get bookingId;
  String get doctorId;
  @JsonKey(ignore: true)
  _$$RemoveBookingEventImplCopyWith<_$RemoveBookingEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateBookingTimeEventImplCopyWith<$Res> {
  factory _$$UpdateBookingTimeEventImplCopyWith(
          _$UpdateBookingTimeEventImpl value,
          $Res Function(_$UpdateBookingTimeEventImpl) then) =
      __$$UpdateBookingTimeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookingId, String doctorId, DateTime newDate});
}

/// @nodoc
class __$$UpdateBookingTimeEventImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$UpdateBookingTimeEventImpl>
    implements _$$UpdateBookingTimeEventImplCopyWith<$Res> {
  __$$UpdateBookingTimeEventImplCopyWithImpl(
      _$UpdateBookingTimeEventImpl _value,
      $Res Function(_$UpdateBookingTimeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
    Object? doctorId = null,
    Object? newDate = null,
  }) {
    return _then(_$UpdateBookingTimeEventImpl(
      null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
      null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
      null == newDate
          ? _value.newDate
          : newDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UpdateBookingTimeEventImpl implements UpdateBookingTimeEvent {
  const _$UpdateBookingTimeEventImpl(
      this.bookingId, this.doctorId, this.newDate);

  @override
  final String bookingId;
  @override
  final String doctorId;
  @override
  final DateTime newDate;

  @override
  String toString() {
    return 'BookingEvent.updateBooks(bookingId: $bookingId, doctorId: $doctorId, newDate: $newDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBookingTimeEventImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.newDate, newDate) || other.newDate == newDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId, doctorId, newDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBookingTimeEventImplCopyWith<_$UpdateBookingTimeEventImpl>
      get copyWith => __$$UpdateBookingTimeEventImplCopyWithImpl<
          _$UpdateBookingTimeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBooks,
    required TResult Function(
            int price, String doctorId, DateTime time, String? description)
        createBooks,
    required TResult Function(String bookingId, String doctorId) removeBooks,
    required TResult Function(
            String bookingId, String doctorId, DateTime newDate)
        updateBooks,
    required TResult Function(String bookingId) updateBookingStatus,
  }) {
    return updateBooks(bookingId, doctorId, newDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBooks,
    TResult? Function(
            int price, String doctorId, DateTime time, String? description)?
        createBooks,
    TResult? Function(String bookingId, String doctorId)? removeBooks,
    TResult? Function(String bookingId, String doctorId, DateTime newDate)?
        updateBooks,
    TResult? Function(String bookingId)? updateBookingStatus,
  }) {
    return updateBooks?.call(bookingId, doctorId, newDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBooks,
    TResult Function(
            int price, String doctorId, DateTime time, String? description)?
        createBooks,
    TResult Function(String bookingId, String doctorId)? removeBooks,
    TResult Function(String bookingId, String doctorId, DateTime newDate)?
        updateBooks,
    TResult Function(String bookingId)? updateBookingStatus,
    required TResult orElse(),
  }) {
    if (updateBooks != null) {
      return updateBooks(bookingId, doctorId, newDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBookingsEvent value) getBooks,
    required TResult Function(CreateBookingEvent value) createBooks,
    required TResult Function(RemoveBookingEvent value) removeBooks,
    required TResult Function(UpdateBookingTimeEvent value) updateBooks,
    required TResult Function(UpdateBookingStatusEvent value)
        updateBookingStatus,
  }) {
    return updateBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBookingsEvent value)? getBooks,
    TResult? Function(CreateBookingEvent value)? createBooks,
    TResult? Function(RemoveBookingEvent value)? removeBooks,
    TResult? Function(UpdateBookingTimeEvent value)? updateBooks,
    TResult? Function(UpdateBookingStatusEvent value)? updateBookingStatus,
  }) {
    return updateBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBookingsEvent value)? getBooks,
    TResult Function(CreateBookingEvent value)? createBooks,
    TResult Function(RemoveBookingEvent value)? removeBooks,
    TResult Function(UpdateBookingTimeEvent value)? updateBooks,
    TResult Function(UpdateBookingStatusEvent value)? updateBookingStatus,
    required TResult orElse(),
  }) {
    if (updateBooks != null) {
      return updateBooks(this);
    }
    return orElse();
  }
}

abstract class UpdateBookingTimeEvent implements BookingEvent {
  const factory UpdateBookingTimeEvent(
      final String bookingId,
      final String doctorId,
      final DateTime newDate) = _$UpdateBookingTimeEventImpl;

  String get bookingId;
  String get doctorId;
  DateTime get newDate;
  @JsonKey(ignore: true)
  _$$UpdateBookingTimeEventImplCopyWith<_$UpdateBookingTimeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateBookingStatusEventImplCopyWith<$Res> {
  factory _$$UpdateBookingStatusEventImplCopyWith(
          _$UpdateBookingStatusEventImpl value,
          $Res Function(_$UpdateBookingStatusEventImpl) then) =
      __$$UpdateBookingStatusEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookingId});
}

/// @nodoc
class __$$UpdateBookingStatusEventImplCopyWithImpl<$Res>
    extends _$BookingEventCopyWithImpl<$Res, _$UpdateBookingStatusEventImpl>
    implements _$$UpdateBookingStatusEventImplCopyWith<$Res> {
  __$$UpdateBookingStatusEventImplCopyWithImpl(
      _$UpdateBookingStatusEventImpl _value,
      $Res Function(_$UpdateBookingStatusEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = null,
  }) {
    return _then(_$UpdateBookingStatusEventImpl(
      null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateBookingStatusEventImpl implements UpdateBookingStatusEvent {
  const _$UpdateBookingStatusEventImpl(this.bookingId);

  @override
  final String bookingId;

  @override
  String toString() {
    return 'BookingEvent.updateBookingStatus(bookingId: $bookingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBookingStatusEventImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBookingStatusEventImplCopyWith<_$UpdateBookingStatusEventImpl>
      get copyWith => __$$UpdateBookingStatusEventImplCopyWithImpl<
          _$UpdateBookingStatusEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBooks,
    required TResult Function(
            int price, String doctorId, DateTime time, String? description)
        createBooks,
    required TResult Function(String bookingId, String doctorId) removeBooks,
    required TResult Function(
            String bookingId, String doctorId, DateTime newDate)
        updateBooks,
    required TResult Function(String bookingId) updateBookingStatus,
  }) {
    return updateBookingStatus(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getBooks,
    TResult? Function(
            int price, String doctorId, DateTime time, String? description)?
        createBooks,
    TResult? Function(String bookingId, String doctorId)? removeBooks,
    TResult? Function(String bookingId, String doctorId, DateTime newDate)?
        updateBooks,
    TResult? Function(String bookingId)? updateBookingStatus,
  }) {
    return updateBookingStatus?.call(bookingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBooks,
    TResult Function(
            int price, String doctorId, DateTime time, String? description)?
        createBooks,
    TResult Function(String bookingId, String doctorId)? removeBooks,
    TResult Function(String bookingId, String doctorId, DateTime newDate)?
        updateBooks,
    TResult Function(String bookingId)? updateBookingStatus,
    required TResult orElse(),
  }) {
    if (updateBookingStatus != null) {
      return updateBookingStatus(bookingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetBookingsEvent value) getBooks,
    required TResult Function(CreateBookingEvent value) createBooks,
    required TResult Function(RemoveBookingEvent value) removeBooks,
    required TResult Function(UpdateBookingTimeEvent value) updateBooks,
    required TResult Function(UpdateBookingStatusEvent value)
        updateBookingStatus,
  }) {
    return updateBookingStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetBookingsEvent value)? getBooks,
    TResult? Function(CreateBookingEvent value)? createBooks,
    TResult? Function(RemoveBookingEvent value)? removeBooks,
    TResult? Function(UpdateBookingTimeEvent value)? updateBooks,
    TResult? Function(UpdateBookingStatusEvent value)? updateBookingStatus,
  }) {
    return updateBookingStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetBookingsEvent value)? getBooks,
    TResult Function(CreateBookingEvent value)? createBooks,
    TResult Function(RemoveBookingEvent value)? removeBooks,
    TResult Function(UpdateBookingTimeEvent value)? updateBooks,
    TResult Function(UpdateBookingStatusEvent value)? updateBookingStatus,
    required TResult orElse(),
  }) {
    if (updateBookingStatus != null) {
      return updateBookingStatus(this);
    }
    return orElse();
  }
}

abstract class UpdateBookingStatusEvent implements BookingEvent {
  const factory UpdateBookingStatusEvent(final String bookingId) =
      _$UpdateBookingStatusEventImpl;

  String get bookingId;
  @JsonKey(ignore: true)
  _$$UpdateBookingStatusEventImplCopyWith<_$UpdateBookingStatusEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Booking> bookings) loaded,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Booking> bookings)? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Booking> bookings)? loaded,
    TResult Function()? loading,
    TResult Function(String error)? error,
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
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res, BookingState>;
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res, $Val extends BookingState>
    implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

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
    extends _$BookingStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'BookingState.initial()';
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
    required TResult Function(List<Booking> bookings) loaded,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Booking> bookings)? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Booking> bookings)? loaded,
    TResult Function()? loading,
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

abstract class _Initial implements BookingState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Booking> bookings});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookings = null,
  }) {
    return _then(_$LoadedImpl(
      null == bookings
          ? _value._bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<Booking>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Booking> bookings) : _bookings = bookings;

  final List<Booking> _bookings;
  @override
  List<Booking> get bookings {
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookings);
  }

  @override
  String toString() {
    return 'BookingState.loaded(bookings: $bookings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._bookings, _bookings));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bookings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Booking> bookings) loaded,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return loaded(bookings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Booking> bookings)? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(bookings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Booking> bookings)? loaded,
    TResult Function()? loading,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(bookings);
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

abstract class _Loaded implements BookingState {
  const factory _Loaded(final List<Booking> bookings) = _$LoadedImpl;

  List<Booking> get bookings;
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
    extends _$BookingStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'BookingState.loading()';
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
    required TResult Function(List<Booking> bookings) loaded,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Booking> bookings)? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Booking> bookings)? loaded,
    TResult Function()? loading,
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

abstract class _Loading implements BookingState {
  const factory _Loading() = _$LoadingImpl;
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
    extends _$BookingStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'BookingState.error(error: $error)';
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
    required TResult Function(List<Booking> bookings) loaded,
    required TResult Function() loading,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Booking> bookings)? loaded,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Booking> bookings)? loaded,
    TResult Function()? loading,
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

abstract class _Error implements BookingState {
  const factory _Error(final String error) = _$ErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
