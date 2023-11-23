part of 'pin_bloc.dart';

@immutable
class PinState {
  const PinState({
    required this.status,
    this.isLoggedIn,
    this.userPin,
  });

  final String? userPin;
  final PinStatus status;
  final bool? isLoggedIn;
}
