import 'package:mint/domain/services/auth_service.dart';

abstract class UpdateUserLastNameUseCase {
  UpdateUserLastNameUseCase();

  Future<void> call(
    String lastName,
  );
}

class FirestoreUpdateUserLastNameUseCase implements UpdateUserLastNameUseCase {
  FirestoreUpdateUserLastNameUseCase(this.service);
  final AuthenticationService service;
  @override
  Future<void> call(
    String lastName,
  ) async {
    await service.updateUserLastName(lastName);
  }
}
