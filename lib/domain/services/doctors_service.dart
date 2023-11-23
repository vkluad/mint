import 'package:mint/domain/entity/doctor.dart';

abstract class DoctorService {
  Stream<List<Doctor>> getDoctors();
  Future<void> markAsFavourite(String doctorId);
  Future<void> removeFromFavourites(String doctorId);
}
