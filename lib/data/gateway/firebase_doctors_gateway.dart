import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mint/assembly/factory.dart';
import 'package:mint/data/model/doctor_dto.dart';
import 'package:mint/domain/entity/doctor.dart';

class FirebaseDoctorsGateway {
  FirebaseDoctorsGateway(this.jsonFactory, this.dtoFactory);
  final _firestore = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;
  final Factory<DoctorDto, Map<String, dynamic>> jsonFactory;
  final Factory<Doctor, DoctorDto> dtoFactory;

  Stream<List<Doctor>> getDoctors() {
    return _firestore.collection('doctors').snapshots().map((querySnapshot) {
      return querySnapshot.docs.map((docSnapshot) {
        final data = docSnapshot.data();
        final dto = jsonFactory.create(data);
        return dtoFactory.create(dto);
      }).toList();
    });
  }

  Future<void> markAsFavourite(
    String doctorId,
  ) async {
    final userRef = _firestore.collection('users').doc(auth.currentUser?.uid);
    var favouriteList = await userRef.get().then((snapshot) {
      final snapshotData = snapshot.data();
      return (snapshotData?['favourites'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList();
    });
    favouriteList ??= [];
    favouriteList.add(doctorId);
    await userRef.update({'favourites': favouriteList});
  }

  Future<void> removeFromFavourites(String doctorId) async {
    final userRef = _firestore.collection('users').doc(auth.currentUser?.uid);
    final favouriteList = await userRef.get().then((snapshot) {
      final snapshotData = snapshot.data();
      return (snapshotData?['favourites'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList();
    });
    favouriteList?.remove(doctorId);
    await userRef.update({'favourites': favouriteList});
  }
}
