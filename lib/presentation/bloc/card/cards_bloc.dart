import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint/domain/entity/card.dart';
import 'package:mint/domain/usecases/create_card_usecase.dart';
import 'package:mint/domain/usecases/get_cards_usecase.dart';
import 'package:mint/domain/usecases/remove_card_usecase.dart';

part 'cards_event.dart';
part 'cards_state.dart';
part 'cards_bloc.freezed.dart';

class CardsBloc extends Bloc<CardsEvent, CardsState> {
  CardsBloc(
    this._createCardUseCase,
    this._getBookingsUseCase,
    this._removeCardUseCase,
  ) : super(const _Initial()) {
    on<CardsEvent>((event, emit) async {
      await event.when(
        loadCards: () async => _getCards(emit),
        addCard: (number, code, date) async {
          await _addCard(emit, number, code, date);
        },
        removeCard: (cardId) async => _removeCard(emit, cardId),
      );
    });
  }

  Future<void> _getCards(Emitter<CardsState> emit) async {
    emit(const _Loading());
    await _getBookingsUseCase.call().forEach((cards) {
      final loadedCards = <BankCard>[];
      for (final card in cards) {
        loadedCards.add(card);
      }
      emit(_Loaded(loadedCards));
    });
  }

  final GetCardsUseCase _getBookingsUseCase;
  final CreateCardUseCase _createCardUseCase;
  final RemoveCardUseCase _removeCardUseCase;

  Future<void> _addCard(
    Emitter<CardsState> emit,
    String number,
    String code,
    String date,
  ) async {
    await _createCardUseCase.call(number, code, date);
  }

  Future<void> _removeCard(
    Emitter<CardsState> emit,
    String cardId,
  ) async {
    await _removeCardUseCase.call(cardId);
  }
}
