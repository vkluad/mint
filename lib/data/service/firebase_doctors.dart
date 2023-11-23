import 'package:mint/data/gateway/firebase_doctors_gateway.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/domain/services/doctors_service.dart';

class FirebaseDoctorsService implements DoctorService {
  FirebaseDoctorsService(this._gateway);

  final FirebaseDoctorsGateway _gateway;

  @override
  Stream<List<Doctor>> getDoctors() {
    return _gateway.getDoctors();
  }

  @override
  Future<void> markAsFavourite(String doctorId) async {
    await _gateway.markAsFavourite(doctorId);
  }

  @override
  Future<void> removeFromFavourites(String doctorId) async {
    await _gateway.removeFromFavourites(doctorId);
  }
}
