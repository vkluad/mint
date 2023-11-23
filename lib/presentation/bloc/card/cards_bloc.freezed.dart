// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cards_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CardsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCards,
    required TResult Function(String number, String code, String date) addCard,
    required TResult Function(String cardId) removeCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCards,
    TResult? Function(String number, String code, String date)? addCard,
    TResult? Function(String cardId)? removeCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCards,
    TResult Function(String number, String code, String date)? addCard,
    TResult Function(String cardId)? removeCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCardsEvent value) loadCards,
    required TResult Function(AddCardEvent value) addCard,
    required TResult Function(RemoveCardEvent value) removeCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCardsEvent value)? loadCards,
    TResult? Function(AddCardEvent value)? addCard,
    TResult? Function(RemoveCardEvent value)? removeCard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCardsEvent value)? loadCards,
    TResult Function(AddCardEvent value)? addCard,
    TResult Function(RemoveCardEvent value)? removeCard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsEventCopyWith<$Res> {
  factory $CardsEventCopyWith(
          CardsEvent value, $Res Function(CardsEvent) then) =
      _$CardsEventCopyWithImpl<$Res, CardsEvent>;
}

/// @nodoc
class _$CardsEventCopyWithImpl<$Res, $Val extends CardsEvent>
    implements $CardsEventCopyWith<$Res> {
  _$CardsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadCardsEventImplCopyWith<$Res> {
  factory _$$LoadCardsEventImplCopyWith(_$LoadCardsEventImpl value,
          $Res Function(_$LoadCardsEventImpl) then) =
      __$$LoadCardsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCardsEventImplCopyWithImpl<$Res>
    extends _$CardsEventCopyWithImpl<$Res, _$LoadCardsEventImpl>
    implements _$$LoadCardsEventImplCopyWith<$Res> {
  __$$LoadCardsEventImplCopyWithImpl(
      _$LoadCardsEventImpl _value, $Res Function(_$LoadCardsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadCardsEventImpl implements LoadCardsEvent {
  const _$LoadCardsEventImpl();

  @override
  String toString() {
    return 'CardsEvent.loadCards()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCardsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCards,
    required TResult Function(String number, String code, String date) addCard,
    required TResult Function(String cardId) removeCard,
  }) {
    return loadCards();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCards,
    TResult? Function(String number, String code, String date)? addCard,
    TResult? Function(String cardId)? removeCard,
  }) {
    return loadCards?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCards,
    TResult Function(String number, String code, String date)? addCard,
    TResult Function(String cardId)? removeCard,
    required TResult orElse(),
  }) {
    if (loadCards != null) {
      return loadCards();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCardsEvent value) loadCards,
    required TResult Function(AddCardEvent value) addCard,
    required TResult Function(RemoveCardEvent value) removeCard,
  }) {
    return loadCards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCardsEvent value)? loadCards,
    TResult? Function(AddCardEvent value)? addCard,
    TResult? Function(RemoveCardEvent value)? removeCard,
  }) {
    return loadCards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCardsEvent value)? loadCards,
    TResult Function(AddCardEvent value)? addCard,
    TResult Function(RemoveCardEvent value)? removeCard,
    required TResult orElse(),
  }) {
    if (loadCards != null) {
      return loadCards(this);
    }
    return orElse();
  }
}

abstract class LoadCardsEvent implements CardsEvent {
  const factory LoadCardsEvent() = _$LoadCardsEventImpl;
}

/// @nodoc
abstract class _$$AddCardEventImplCopyWith<$Res> {
  factory _$$AddCardEventImplCopyWith(
          _$AddCardEventImpl value, $Res Function(_$AddCardEventImpl) then) =
      __$$AddCardEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String number, String code, String date});
}

/// @nodoc
class __$$AddCardEventImplCopyWithImpl<$Res>
    extends _$CardsEventCopyWithImpl<$Res, _$AddCardEventImpl>
    implements _$$AddCardEventImplCopyWith<$Res> {
  __$$AddCardEventImplCopyWithImpl(
      _$AddCardEventImpl _value, $Res Function(_$AddCardEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? code = null,
    Object? date = null,
  }) {
    return _then(_$AddCardEventImpl(
      null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddCardEventImpl implements AddCardEvent {
  const _$AddCardEventImpl(this.number, this.code, this.date);

  @override
  final String number;
  @override
  final String code;
  @override
  final String date;

  @override
  String toString() {
    return 'CardsEvent.addCard(number: $number, code: $code, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCardEventImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number, code, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCardEventImplCopyWith<_$AddCardEventImpl> get copyWith =>
      __$$AddCardEventImplCopyWithImpl<_$AddCardEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCards,
    required TResult Function(String number, String code, String date) addCard,
    required TResult Function(String cardId) removeCard,
  }) {
    return addCard(number, code, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCards,
    TResult? Function(String number, String code, String date)? addCard,
    TResult? Function(String cardId)? removeCard,
  }) {
    return addCard?.call(number, code, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCards,
    TResult Function(String number, String code, String date)? addCard,
    TResult Function(String cardId)? removeCard,
    required TResult orElse(),
  }) {
    if (addCard != null) {
      return addCard(number, code, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCardsEvent value) loadCards,
    required TResult Function(AddCardEvent value) addCard,
    required TResult Function(RemoveCardEvent value) removeCard,
  }) {
    return addCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCardsEvent value)? loadCards,
    TResult? Function(AddCardEvent value)? addCard,
    TResult? Function(RemoveCardEvent value)? removeCard,
  }) {
    return addCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCardsEvent value)? loadCards,
    TResult Function(AddCardEvent value)? addCard,
    TResult Function(RemoveCardEvent value)? removeCard,
    required TResult orElse(),
  }) {
    if (addCard != null) {
      return addCard(this);
    }
    return orElse();
  }
}

abstract class AddCardEvent implements CardsEvent {
  const factory AddCardEvent(
          final String number, final String code, final String date) =
      _$AddCardEventImpl;

  String get number;
  String get code;
  String get date;
  @JsonKey(ignore: true)
  _$$AddCardEventImplCopyWith<_$AddCardEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveCardEventImplCopyWith<$Res> {
  factory _$$RemoveCardEventImplCopyWith(_$RemoveCardEventImpl value,
          $Res Function(_$RemoveCardEventImpl) then) =
      __$$RemoveCardEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cardId});
}

/// @nodoc
class __$$RemoveCardEventImplCopyWithImpl<$Res>
    extends _$CardsEventCopyWithImpl<$Res, _$RemoveCardEventImpl>
    implements _$$RemoveCardEventImplCopyWith<$Res> {
  __$$RemoveCardEventImplCopyWithImpl(
      _$RemoveCardEventImpl _value, $Res Function(_$RemoveCardEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardId = null,
  }) {
    return _then(_$RemoveCardEventImpl(
      null == cardId
          ? _value.cardId
          : cardId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveCardEventImpl implements RemoveCardEvent {
  const _$RemoveCardEventImpl(this.cardId);

  @override
  final String cardId;

  @override
  String toString() {
    return 'CardsEvent.removeCard(cardId: $cardId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCardEventImpl &&
            (identical(other.cardId, cardId) || other.cardId == cardId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cardId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCardEventImplCopyWith<_$RemoveCardEventImpl> get copyWith =>
      __$$RemoveCardEventImplCopyWithImpl<_$RemoveCardEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCards,
    required TResult Function(String number, String code, String date) addCard,
    required TResult Function(String cardId) removeCard,
  }) {
    return removeCard(cardId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCards,
    TResult? Function(String number, String code, String date)? addCard,
    TResult? Function(String cardId)? removeCard,
  }) {
    return removeCard?.call(cardId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCards,
    TResult Function(String number, String code, String date)? addCard,
    TResult Function(String cardId)? removeCard,
    required TResult orElse(),
  }) {
    if (removeCard != null) {
      return removeCard(cardId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCardsEvent value) loadCards,
    required TResult Function(AddCardEvent value) addCard,
    required TResult Function(RemoveCardEvent value) removeCard,
  }) {
    return removeCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCardsEvent value)? loadCards,
    TResult? Function(AddCardEvent value)? addCard,
    TResult? Function(RemoveCardEvent value)? removeCard,
  }) {
    return removeCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCardsEvent value)? loadCards,
    TResult Function(AddCardEvent value)? addCard,
    TResult Function(RemoveCardEvent value)? removeCard,
    required TResult orElse(),
  }) {
    if (removeCard != null) {
      return removeCard(this);
    }
    return orElse();
  }
}

abstract class RemoveCardEvent implements CardsEvent {
  const factory RemoveCardEvent(final String cardId) = _$RemoveCardEventImpl;

  String get cardId;
  @JsonKey(ignore: true)
  _$$RemoveCardEventImplCopyWith<_$RemoveCardEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CardsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<BankCard> cards) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<BankCard> cards)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<BankCard> cards)? loaded,
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
abstract class $CardsStateCopyWith<$Res> {
  factory $CardsStateCopyWith(
          CardsState value, $Res Function(CardsState) then) =
      _$CardsStateCopyWithImpl<$Res, CardsState>;
}

/// @nodoc
class _$CardsStateCopyWithImpl<$Res, $Val extends CardsState>
    implements $CardsStateCopyWith<$Res> {
  _$CardsStateCopyWithImpl(this._value, this._then);

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
    extends _$CardsStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CardsState.initial()';
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
    required TResult Function(List<BankCard> cards) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<BankCard> cards)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<BankCard> cards)? loaded,
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

abstract class _Initial implements CardsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BankCard> cards});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CardsStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
  }) {
    return _then(_$LoadedImpl(
      null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<BankCard>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<BankCard> cards) : _cards = cards;

  final List<BankCard> _cards;
  @override
  List<BankCard> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'CardsState.loaded(cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<BankCard> cards) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loaded(cards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<BankCard> cards)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loaded?.call(cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<BankCard> cards)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cards);
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

abstract class _Loaded implements CardsState {
  const factory _Loaded(final List<BankCard> cards) = _$LoadedImpl;

  List<BankCard> get cards;
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
    extends _$CardsStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'CardsState.loading()';
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
    required TResult Function(List<BankCard> cards) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<BankCard> cards)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<BankCard> cards)? loaded,
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

abstract class _Loading implements CardsState {
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
    extends _$CardsStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'CardsState.error()';
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
    required TResult Function(List<BankCard> cards) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<BankCard> cards)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<BankCard> cards)? loaded,
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

abstract class _Error implements CardsState {
  const factory _Error() = _$ErrorImpl;
}
