import 'dart:io';

import 'package:mint/domain/services/auth_service.dart';

abstract class SetProfilePhotoUseCase {
  SetProfilePhotoUseCase();

  Future<void> call(File file);
}

class FirestoreSetProfilePhotoUseCase implements SetProfilePhotoUseCase {
  FirestoreSetProfilePhotoUseCase(this.service);
  final AuthenticationService service;
  @override
  Future<void> call(
    File file,
  ) async {
    await service.setProfilePhoto(file);
  }
}
