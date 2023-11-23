import 'dart:io';

import 'package:mint/domain/entity/user.dart' as user_entity;

abstract class AuthenticationService {
  Future<void> signUpWithNumber(String phoneNumber);
  Future<user_entity.User> verifyOtp(String userOtp);
  Future<void> signOut();
  Stream<user_entity.User> getCurrentUser();
  Future<void> updateUserDateOfBirth(
    DateTime date,
  );
  Future<void> updateUserFirstName(String firstName);
  Future<void> updateUserLastName(String lastName);
  Future<void> setProfilePhoto(File file);
  Future<void> setUserPin(String pin);
}
