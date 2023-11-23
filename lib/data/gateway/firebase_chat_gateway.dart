import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:mint/assembly/factory.dart';
import 'package:mint/data/model/message_dto.dart';
import 'package:mint/domain/entity/message.dart';

class FirebaseChatGateway {
  FirebaseChatGateway(this.jsonFactory, this.dtoFactory);
  final _firestore = FirebaseFirestore.instance;
  final _storage = FirebaseStorage.instance;

  User? user = FirebaseAuth.instance.currentUser;

  final Factory<MessageDto, Map<String, dynamic>> jsonFactory;
  final Factory<Message, MessageDto> dtoFactory;

  Future<void> sendMessage({
    required String msg,
    required DateTime sent,
    required String fromId,
    required String toId,
    required String type,
  }) async {
    try {
      final messageData = {
        'msg': msg,
        'sent': sent,
        'fromId': fromId,
        'toId': toId,
        'type': type,
      };

      final docRef = _firestore
          // .collection('users')
          // .doc(user?.uid)
          .collection('messages')
          .doc();

      final messageId = docRef.id;
      await docRef.set({...messageData, 'msgId': messageId});
    } catch (e) {
      throw Exception('Failed to send message.');
    }
  }

  Future<void> sendImageMessage(
    File file,
    String doctorId,
  ) async {
    try {
      final extension = file.path.split('.').last;

      final ref = _storage.ref().child(
            'images/$doctorId/${user?.uid}/${DateTime.now().microsecondsSinceEpoch}.$extension',
          );
      await ref
          .putFile(file, SettableMetadata(contentType: 'image/$extension'))
          .then(
            (p0) => debugPrint('Uploading data: ${p0.bytesTransferred} kb'),
          );
      final imageUrl = await ref.getDownloadURL();
      if (user?.uid != null) {
        await sendMessage(
          msg: imageUrl,
          sent: DateTime.now(),
          fromId: user!.uid,
          type: 'image',
          toId: doctorId,
        );
      }
    } catch (e) {
      throw Exception('Failed to send message.');
    } 
  }

  Future<void> updateMessageStatus(String msgId) async {
    try {
      final messageRef = _firestore
          // .collection('users')
          // .doc(user?.uid)
          .collection('messages')
          .doc(msgId);

      await messageRef.update({
        'read': DateTime.now(),
      });
    } catch (e) {
      throw Exception('Failed to update message status.');
    }
  }

  Stream<List<Message>> getMessages() {
    return _firestore
        // .collection('users')
        // .doc(user?.uid)
        .collection('messages')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map((docSnapshot) {
        final data = docSnapshot.data();
        final dto = jsonFactory.create(data);
        return dtoFactory.create(dto);
      }).toList();
    });
  }
}
