import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mint/assembly/factory.dart';
import 'package:mint/data/model/notification_dto.dart';
import 'package:mint/domain/entity/notification.dart';

class FirebaseNotificationGateway {
  FirebaseNotificationGateway(this.jsonFactory, this.dtoFactory);
  final Factory<UserNotificationDto, Map<String, dynamic>> jsonFactory;
  final Factory<UserNotification, UserNotificationDto> dtoFactory;
  User? user = FirebaseAuth.instance.currentUser;
  final _firestore = FirebaseFirestore.instance;

  Stream<List<UserNotification>> getNotifications() {
    return _firestore
        .collection('users')
        .doc(user?.uid)
        .collection('notifications')
        .snapshots()
        .map((querySnapshot) {
      return querySnapshot.docs.map((docSnapshot) {
        final data = docSnapshot.data();
        final dto = jsonFactory.create(data);
        return dtoFactory.create(dto);
      }).toList();
    });
  }

  Future<void> removeAllNotifications() async {
    final ref = _firestore
        .collection('users')
        .doc(user?.uid)
        .collection('notifications');

    final notificationsSnapshot = await ref.get();

    final batch = _firestore.batch();

    for (final doc in notificationsSnapshot.docs) {
      batch.delete(doc.reference);
    }
    await batch.commit();
  }

  Future<void> updateNotificationReadStatus(String notificationId) async {
    await _firestore
        .collection('users')
        .doc(user?.uid)
        .collection('notifications')
        .doc(notificationId)
        .update({'isRead': true});
  }
}
