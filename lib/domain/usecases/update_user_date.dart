import 'package:mint/domain/services/auth_service.dart';

abstract class UpdateUserDateUseCase {
  UpdateUserDateUseCase();

  Future<void> call(
    DateTime date,
  );
}

class FirestoreUpdateUserDateUseCase implements UpdateUserDateUseCase {
  FirestoreUpdateUserDateUseCase(this.service);
  final AuthenticationService service;
  @override
  Future<void> call(
    DateTime date,
  ) async {
    await service.updateUserDateOfBirth(date);
  }
}
