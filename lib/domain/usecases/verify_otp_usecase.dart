import 'package:mint/domain/entity/user.dart' as user_entity;
import 'package:mint/domain/services/auth_service.dart';

abstract class VerifyOtpUseCase {
  VerifyOtpUseCase();

  Future<user_entity.User> call(
    String userOtp,
    String phoneNumber,
  );
}

class FirestoreVerifyOtpUseCase implements VerifyOtpUseCase {
  FirestoreVerifyOtpUseCase(this.service);
  final AuthenticationService service;
  @override
  Future<user_entity.User> call(
    String userOtp,
    String phoneNumber,
  ) async {
    final user = await service.verifyOtp(userOtp);
    return user;
  }
}
