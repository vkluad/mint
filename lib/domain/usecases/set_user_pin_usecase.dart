import 'package:mint/domain/services/auth_service.dart';

abstract class SetUserPinUseCase {
  SetUserPinUseCase();

  Future<void> call(String pin);
}

class FirestoreSetUserPinUseCase implements SetUserPinUseCase {
  FirestoreSetUserPinUseCase(this.service);
  final AuthenticationService service;
  @override
  Future<void> call(String pin) async {
    await service.setUserPin(pin);
  }
}
