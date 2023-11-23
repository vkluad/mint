abstract class PinService {
  Stream<String?> getUserPin();
  Future<void> setUserPin(String userPin);
}
