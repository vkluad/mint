import 'package:mint/domain/services/auth_service.dart';

abstract class SignUpUseCase {
  SignUpUseCase();

  Future<void> call(String phoneNumber);
}

class FirestoreSignUpUseCase implements SignUpUseCase {
  FirestoreSignUpUseCase(this.service);
  final AuthenticationService service;
  @override
  Future<void> call(String phoneNumber) async {
    return service.signUpWithNumber(phoneNumber);
  }
}
