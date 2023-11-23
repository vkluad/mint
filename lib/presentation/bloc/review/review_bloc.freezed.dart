// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String review, DateTime sent, String fromId,
            String fromName, int rate, String toId)
        sendReview,
    required TResult Function() getReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String review, DateTime sent, String fromId,
            String fromName, int rate, String toId)?
        sendReview,
    TResult? Function()? getReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String review, DateTime sent, String fromId,
            String fromName, int rate, String toId)?
        sendReview,
    TResult Function()? getReviews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReviewEvent value) sendReview,
    required TResult Function(GetReviewsEvent value) getReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendReviewEvent value)? sendReview,
    TResult? Function(GetReviewsEvent value)? getReviews,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewEvent value)? sendReview,
    TResult Function(GetReviewsEvent value)? getReviews,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewEventCopyWith<$Res> {
  factory $ReviewEventCopyWith(
          ReviewEvent value, $Res Function(ReviewEvent) then) =
      _$ReviewEventCopyWithImpl<$Res, ReviewEvent>;
}

/// @nodoc
class _$ReviewEventCopyWithImpl<$Res, $Val extends ReviewEvent>
    implements $ReviewEventCopyWith<$Res> {
  _$ReviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendReviewEventImplCopyWith<$Res> {
  factory _$$SendReviewEventImplCopyWith(_$SendReviewEventImpl value,
          $Res Function(_$SendReviewEventImpl) then) =
      __$$SendReviewEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String review,
      DateTime sent,
      String fromId,
      String fromName,
      int rate,
      String toId});
}

/// @nodoc
class __$$SendReviewEventImplCopyWithImpl<$Res>
    extends _$ReviewEventCopyWithImpl<$Res, _$SendReviewEventImpl>
    implements _$$SendReviewEventImplCopyWith<$Res> {
  __$$SendReviewEventImplCopyWithImpl(
      _$SendReviewEventImpl _value, $Res Function(_$SendReviewEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? review = null,
    Object? sent = null,
    Object? fromId = null,
    Object? fromName = null,
    Object? rate = null,
    Object? toId = null,
  }) {
    return _then(_$SendReviewEventImpl(
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      sent: null == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fromId: null == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      fromName: null == fromName
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
      toId: null == toId
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendReviewEventImpl implements SendReviewEvent {
  const _$SendReviewEventImpl(
      {required this.review,
      required this.sent,
      required this.fromId,
      required this.fromName,
      required this.rate,
      required this.toId});

  @override
  final String review;
  @override
  final DateTime sent;
  @override
  final String fromId;
  @override
  final String fromName;
  @override
  final int rate;
  @override
  final String toId;

  @override
  String toString() {
    return 'ReviewEvent.sendReview(review: $review, sent: $sent, fromId: $fromId, fromName: $fromName, rate: $rate, toId: $toId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendReviewEventImpl &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.sent, sent) || other.sent == sent) &&
            (identical(other.fromId, fromId) || other.fromId == fromId) &&
            (identical(other.fromName, fromName) ||
                other.fromName == fromName) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.toId, toId) || other.toId == toId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, review, sent, fromId, fromName, rate, toId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendReviewEventImplCopyWith<_$SendReviewEventImpl> get copyWith =>
      __$$SendReviewEventImplCopyWithImpl<_$SendReviewEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String review, DateTime sent, String fromId,
            String fromName, int rate, String toId)
        sendReview,
    required TResult Function() getReviews,
  }) {
    return sendReview(review, sent, fromId, fromName, rate, toId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String review, DateTime sent, String fromId,
            String fromName, int rate, String toId)?
        sendReview,
    TResult? Function()? getReviews,
  }) {
    return sendReview?.call(review, sent, fromId, fromName, rate, toId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String review, DateTime sent, String fromId,
            String fromName, int rate, String toId)?
        sendReview,
    TResult Function()? getReviews,
    required TResult orElse(),
  }) {
    if (sendReview != null) {
      return sendReview(review, sent, fromId, fromName, rate, toId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReviewEvent value) sendReview,
    required TResult Function(GetReviewsEvent value) getReviews,
  }) {
    return sendReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendReviewEvent value)? sendReview,
    TResult? Function(GetReviewsEvent value)? getReviews,
  }) {
    return sendReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewEvent value)? sendReview,
    TResult Function(GetReviewsEvent value)? getReviews,
    required TResult orElse(),
  }) {
    if (sendReview != null) {
      return sendReview(this);
    }
    return orElse();
  }
}

abstract class SendReviewEvent implements ReviewEvent {
  const factory SendReviewEvent(
      {required final String review,
      required final DateTime sent,
      required final String fromId,
      required final String fromName,
      required final int rate,
      required final String toId}) = _$SendReviewEventImpl;

  String get review;
  DateTime get sent;
  String get fromId;
  String get fromName;
  int get rate;
  String get toId;
  @JsonKey(ignore: true)
  _$$SendReviewEventImplCopyWith<_$SendReviewEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetReviewsEventImplCopyWith<$Res> {
  factory _$$GetReviewsEventImplCopyWith(_$GetReviewsEventImpl value,
          $Res Function(_$GetReviewsEventImpl) then) =
      __$$GetReviewsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetReviewsEventImplCopyWithImpl<$Res>
    extends _$ReviewEventCopyWithImpl<$Res, _$GetReviewsEventImpl>
    implements _$$GetReviewsEventImplCopyWith<$Res> {
  __$$GetReviewsEventImplCopyWithImpl(
      _$GetReviewsEventImpl _value, $Res Function(_$GetReviewsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetReviewsEventImpl implements GetReviewsEvent {
  const _$GetReviewsEventImpl();

  @override
  String toString() {
    return 'ReviewEvent.getReviews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetReviewsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String review, DateTime sent, String fromId,
            String fromName, int rate, String toId)
        sendReview,
    required TResult Function() getReviews,
  }) {
    return getReviews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String review, DateTime sent, String fromId,
            String fromName, int rate, String toId)?
        sendReview,
    TResult? Function()? getReviews,
  }) {
    return getReviews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String review, DateTime sent, String fromId,
            String fromName, int rate, String toId)?
        sendReview,
    TResult Function()? getReviews,
    required TResult orElse(),
  }) {
    if (getReviews != null) {
      return getReviews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendReviewEvent value) sendReview,
    required TResult Function(GetReviewsEvent value) getReviews,
  }) {
    return getReviews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendReviewEvent value)? sendReview,
    TResult? Function(GetReviewsEvent value)? getReviews,
  }) {
    return getReviews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendReviewEvent value)? sendReview,
    TResult Function(GetReviewsEvent value)? getReviews,
    required TResult orElse(),
  }) {
    if (getReviews != null) {
      return getReviews(this);
    }
    return orElse();
  }
}

abstract class GetReviewsEvent implements ReviewEvent {
  const factory GetReviewsEvent() = _$GetReviewsEventImpl;
}

/// @nodoc
mixin _$ReviewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Review> reviews) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Review> reviews)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Review> reviews)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadedReviews value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadedReviews value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadedReviews value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewStateCopyWith<$Res> {
  factory $ReviewStateCopyWith(
          ReviewState value, $Res Function(ReviewState) then) =
      _$ReviewStateCopyWithImpl<$Res, ReviewState>;
}

/// @nodoc
class _$ReviewStateCopyWithImpl<$Res, $Val extends ReviewState>
    implements $ReviewStateCopyWith<$Res> {
  _$ReviewStateCopyWithImpl(this._value, this._then);

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
    extends _$ReviewStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ReviewState.initial()';
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
    required TResult Function(List<Review> reviews) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Review> reviews)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Review> reviews)? loaded,
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
    required TResult Function(LoadedReviews value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadedReviews value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadedReviews value)? loaded,
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

abstract class _Initial implements ReviewState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadedReviewsImplCopyWith<$Res> {
  factory _$$LoadedReviewsImplCopyWith(
          _$LoadedReviewsImpl value, $Res Function(_$LoadedReviewsImpl) then) =
      __$$LoadedReviewsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Review> reviews});
}

/// @nodoc
class __$$LoadedReviewsImplCopyWithImpl<$Res>
    extends _$ReviewStateCopyWithImpl<$Res, _$LoadedReviewsImpl>
    implements _$$LoadedReviewsImplCopyWith<$Res> {
  __$$LoadedReviewsImplCopyWithImpl(
      _$LoadedReviewsImpl _value, $Res Function(_$LoadedReviewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviews = null,
  }) {
    return _then(_$LoadedReviewsImpl(
      null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ));
  }
}

/// @nodoc

class _$LoadedReviewsImpl implements LoadedReviews {
  const _$LoadedReviewsImpl(final List<Review> reviews) : _reviews = reviews;

  final List<Review> _reviews;
  @override
  List<Review> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'ReviewState.loaded(reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedReviewsImpl &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedReviewsImplCopyWith<_$LoadedReviewsImpl> get copyWith =>
      __$$LoadedReviewsImplCopyWithImpl<_$LoadedReviewsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Review> reviews) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loaded(reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Review> reviews)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loaded?.call(reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Review> reviews)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadedReviews value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadedReviews value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadedReviews value)? loaded,
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

abstract class LoadedReviews implements ReviewState {
  const factory LoadedReviews(final List<Review> reviews) = _$LoadedReviewsImpl;

  List<Review> get reviews;
  @JsonKey(ignore: true)
  _$$LoadedReviewsImplCopyWith<_$LoadedReviewsImpl> get copyWith =>
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
    extends _$ReviewStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'ReviewState.loading()';
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
    required TResult Function(List<Review> reviews) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Review> reviews)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Review> reviews)? loaded,
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
    required TResult Function(LoadedReviews value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadedReviews value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadedReviews value)? loaded,
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

abstract class _Loading implements ReviewState {
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
    extends _$ReviewStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'ReviewState.error()';
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
    required TResult Function(List<Review> reviews) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Review> reviews)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Review> reviews)? loaded,
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
    required TResult Function(LoadedReviews value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadedReviews value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadedReviews value)? loaded,
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

abstract class _Error implements ReviewState {
  const factory _Error() = _$ErrorImpl;
}
