import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint/backbone/bloc_status.dart';
import 'package:mint/domain/usecases/get_user_pin_usecase.dart';
import 'package:mint/domain/usecases/set_user_pin_usecase.dart';

part 'pin_event.dart';
part 'pin_state.dart';
part 'pin_bloc.freezed.dart';

class PinBloc extends Bloc<PinEvent, PinState> {
  PinBloc(this._getUserPinUseCase, this._setUserPinUseCase)
      : super(const PinState(status: PinStatus.enterPin)) {
    on<PinEvent>((event, emit) async {
      await event.when(
        setNewPin: (userPin) async {
          await _setUserPin(userPin, emit);
        },
        confirmPin: (userPin) async {
          await _confirmUserPin(emit, userPin);
        },
        getUserPin: () async {
          await _getUserPin(emit);
        },
        resetUserPin: () async {
          await _resetUserPin(emit);
        },
        enterUserPin: (userPin) async {
          await _enterUserPin(emit, userPin);
        },
      );
    });
  }

  Future<void> _getUserPin(Emitter<PinState> emit) async {
    await emit.forEach(
      _getUserPinUseCase.call(),
      onData: (pin) {
        return pin != null
            ? PinState(status: PinStatus.enterCurrentPin, userPin: pin)
            : const PinState(status: PinStatus.noPin);
      },
    );
  }

  Future<void> _confirmUserPin(Emitter<PinState> emit, String userPin) async {
    emit(PinState(status: PinStatus.confirmPin, userPin: userPin));
  }

  Future<void> _resetUserPin(Emitter<PinState> emit) async {
    emit(const PinState(status: PinStatus.noPin));
  }

  Future<void> _enterUserPin(Emitter<PinState> emit, String userPin) async {
    emit(PinState(status: PinStatus.pinEntered, userPin: userPin));
  }

  Future<void> _setUserPin(String userPin, Emitter<PinState> emit) async {
    await _setUserPinUseCase.call(userPin);
    emit(PinState(status: PinStatus.pinEntered, userPin: userPin));
  }

  final GetUserPinUseCase _getUserPinUseCase;
  final SetUserPinUseCase _setUserPinUseCase;
}
