import 'package:mint/domain/services/pin_service.dart';

abstract class GetUserPinUseCase {
  GetUserPinUseCase();

  Stream<String?> call();
}

class FirestoreGetUserPinUseCase implements GetUserPinUseCase {
  FirestoreGetUserPinUseCase(this._service);
  final PinService _service;

  @override
  Stream<String?> call() {
    return _service.getUserPin();
  }
}
