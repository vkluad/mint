part of 'cards_bloc.dart';

@freezed
class CardsEvent with _$CardsEvent {
  const factory CardsEvent.loadCards() = LoadCardsEvent;
  const factory CardsEvent.addCard(String number, String code, String date) =
      AddCardEvent;
  const factory CardsEvent.removeCard(String cardId) = RemoveCardEvent;
}
