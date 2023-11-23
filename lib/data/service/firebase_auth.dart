import 'dart:io';

import 'package:mint/data/gateway/firebase_auth_gateway.dart';

import 'package:mint/domain/entity/user.dart' as user_entity;
import 'package:mint/domain/services/auth_service.dart';

class FirebaseAuthentication implements AuthenticationService {
  FirebaseAuthentication(this._gateway);
  final FirebaseAuthGateway _gateway;

  @override
  Future<void> signUpWithNumber(String phoneNumber) async {
    try {
      await _gateway.signUpWithNumber(phoneNumber);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<user_entity.User> verifyOtp(
    String userOtp,
  ) async {
    try {
      final user = await _gateway.verifyOtp(userOtp);

      if (user != null && user.phoneNumber != null) {
        return user_entity.User(
          id: user.uid,
          number: user.phoneNumber!,
        );
      } else {
        throw Exception('User not found');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Stream<user_entity.User> getCurrentUser() async* {
    await for (final userData in _gateway.getCurrentUserStream()) {
      if (userData != null) {
        yield user_entity.User(
          id: userData.id,
          lastName: userData.lastName,
          firstName: userData.firstName,
          userPin: userData.userPin,
          dateOfBirth: userData.dateOfBirth,
          number: userData.number,
          image: userData.image,
          favourites: userData.favourites,
        );
      } else {
        throw Exception('User not found');
      }
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _gateway.signOut();
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> updateUserDateOfBirth(DateTime date) async {
    try {
      await _gateway.updateUserDateOfBirth(date);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> updateUserFirstName(String firstName) async {
    try {
      await _gateway.updateUserFirstName(firstName);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> updateUserLastName(String lastName) async {
    try {
      await _gateway.updateUserLastName(lastName);
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<void> setProfilePhoto(File file) async {
    await _gateway.setProfilePhoto(file);
  }

  @override
  Future<void> setUserPin(String pin) async {
    try {
      await _gateway.setUserPin(pin);
    } catch (e) {
      throw Exception(e);
    }
  }
}
