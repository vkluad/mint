import 'package:mint/domain/services/auth_service.dart';

abstract class UpdateUserFirstNameUseCase {
  UpdateUserFirstNameUseCase();

  Future<void> call(
    String firstName,
  );
}

class FirestoreUpdateUserFirstNameUseCase
    implements UpdateUserFirstNameUseCase {
  FirestoreUpdateUserFirstNameUseCase(this.service);
  final AuthenticationService service;
  @override
  Future<void> call(
    String firstName,
  ) async {
    await service.updateUserFirstName(firstName);
  }
}
