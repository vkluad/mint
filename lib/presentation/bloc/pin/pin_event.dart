part of 'pin_bloc.dart';

@freezed
class PinEvent with _$PinEvent {
  const factory PinEvent.setNewPin(String userPin) = SetNewPinEvent;
  const factory PinEvent.confirmPin(String userPin) = ConfirmUserPinEvent;
  const factory PinEvent.getUserPin() = GetUserPinEvent;
  const factory PinEvent.resetUserPin() = ResetUserPinEvent;
  const factory PinEvent.enterUserPin(String userPin) = EnterUserPinEvent;
}
