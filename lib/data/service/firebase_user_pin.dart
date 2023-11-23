import 'package:mint/data/gateway/firebase_auth_gateway.dart';
import 'package:mint/domain/services/pin_service.dart';

class FirebaseUserPinService implements PinService {
  FirebaseUserPinService(this._gateway);
  final FirebaseAuthGateway _gateway;
  @override
  Stream<String?> getUserPin() {
    return _gateway.getUserPin();
  }

  @override
  Future<void> setUserPin(String userPin) async {
    await _gateway.setUserPin(userPin);
  }
}
