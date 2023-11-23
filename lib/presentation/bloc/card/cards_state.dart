part of 'cards_bloc.dart';

@freezed
class CardsState with _$CardsState {
  const factory CardsState.initial() = _Initial;
  const factory CardsState.loaded(List<BankCard> cards) = _Loaded;
  const factory CardsState.loading() = _Loading;
  const factory CardsState.error() = _Error;
}
