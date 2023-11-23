import 'package:mint/domain/entity/user.dart' as user_entity;
import 'package:mint/domain/services/auth_service.dart';

abstract class GetCurrentUserUseCase {
  GetCurrentUserUseCase();

  Stream<user_entity.User> call();
}

class FirestoreGetCurrentUserUseCase implements GetCurrentUserUseCase {
  FirestoreGetCurrentUserUseCase(this._service);
  final AuthenticationService _service;

  @override
  Stream<user_entity.User> call() {
    return _service.getCurrentUser();
  }
}
