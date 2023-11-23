import 'package:mint/domain/services/auth_service.dart';

abstract class SignOutUseCase {
  SignOutUseCase();

  Future<void> call();
}

class FirestoreSignOutUseCase implements SignOutUseCase {
  FirestoreSignOutUseCase(this.service);
  final AuthenticationService service;
  @override
  Future<void> call() async {
    return service.signOut();
  }
}
