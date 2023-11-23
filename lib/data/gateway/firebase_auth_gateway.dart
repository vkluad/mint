import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

import 'package:mint/assembly/factory.dart';
import 'package:mint/data/model/user_dto.dart';
import 'package:mint/domain/entity/user.dart' as user_entity;

class FirebaseAuthGateway {
  FirebaseAuthGateway(this._dtoFromJsonFactory, this._userFromDtoFactory);

  final auth = FirebaseAuth.instance;
  final firestore = FirebaseFirestore.instance;
  final Factory<UserDto, Map<String, dynamic>> _dtoFromJsonFactory;
  final Factory<user_entity.User, UserDto> _userFromDtoFactory;

  String? verificationUserId;
  Future<void> signUpWithNumber(String phoneNumber) async {
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (phoneAuthCredential) async {
          await auth.signInWithCredential(phoneAuthCredential);
        },
        verificationFailed: (error) {
          throw Exception(error.message);
        },
        codeSent: (verificationId, forceResendingToken) {
          verificationUserId = verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId) {},
      );
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> setUserPin(
    String pin,
  ) async {
    try {
      final ref = firestore.collection('users').doc(auth.currentUser?.uid);
      await ref.update({'userPin': pin});
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> updateUserDateOfBirth(DateTime date) async {
    try {
      await firestore
          .collection('users')
          .doc(auth.currentUser?.uid)
          .update({'dateOfBirth': date});
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> updateUserFirstName(String firstName) async {
    try {
      await firestore
          .collection('users')
          .doc(auth.currentUser?.uid)
          .update({'firstName': firstName});
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> updateUserLastName(String lastName) async {
    try {
      await firestore
          .collection('users')
          .doc(auth.currentUser?.uid)
          .update({'lastName': lastName});
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> setProfilePhoto(File file) async {
  try {
    final ref = firebase_storage.FirebaseStorage.instance
        .ref()
        .child(file.absolute.path);

    await ref.putFile(file);
    final imageUrl = await ref.getDownloadURL();
    final docRef = firestore.collection('users').doc(auth.currentUser?.uid);
    await docRef.update({'image': imageUrl});
  } catch (e) {
    throw Exception('Failed to set profile photo.');
  }
}

  Future<void> storeUserToFirestore(User user) async {
    try {
      final token = await FirebaseMessaging.instance.getToken();
      final docRef = firestore.collection('users').doc(user.uid);
      final data = {
        'id': user.uid,
        'number': user.phoneNumber,
        'fcmToken': token,
      };
      final userSnapshot = await docRef.get();
      if (userSnapshot.exists) {
        await docRef.update(data);
      } else {
        await docRef.set(data);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<User?> verifyOtp(
    String userOtp,
  ) async {
    try {
      final creds = PhoneAuthProvider.credential(
        verificationId: verificationUserId ?? '',
        smsCode: userOtp,
      );
      final userCreds = await auth.signInWithCredential(creds);
      final user = userCreds.user;

      if (user != null) {
        await storeUserToFirestore(user);
      }
      return user;
    } catch (e) {
      throw Exception(e);
    }
  }

  Stream<String?> getUserPin() {
    return firestore
        .collection('users')
        .doc(auth.currentUser?.uid)
        .snapshots()
        .map((snapshot) {
      final snapData = snapshot.data();
      return snapData?['userPin'] as String?;
    }).distinct();
  }

  Stream<User?> get onAuthStateChanged => auth.authStateChanges();

  Stream<user_entity.User?> getCurrentUserStream() async* {
    final user = auth.currentUser;

    if (user != null) {
      await storeUserToFirestore(user);
      final userSnapshots =
          firestore.collection('users').doc(user.uid).snapshots();
      await for (final snapshot in userSnapshots) {
        final userData = snapshot.data();
        if (userData != null) {
          yield _userFromDtoFactory
              .create(_dtoFromJsonFactory.create(userData));
        } else {
          yield null;
        }
      }
    } else {
      throw Exception('User not found');
    }
  }

  Future<void> signOut() async {
    try {
      await auth.signOut();
    } catch (e) {
      throw Exception(e);
    }
  }
}
