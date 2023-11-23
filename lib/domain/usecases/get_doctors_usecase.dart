import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/domain/services/doctors_service.dart';

abstract class GetDoctorsUseCase {
  GetDoctorsUseCase();

  Stream<List<Doctor>> call();
}

class FirestoreGetDoctorsUseCase implements GetDoctorsUseCase {
  FirestoreGetDoctorsUseCase(this._service);
  final DoctorService _service;

  @override
  Stream<List<Doctor>> call() {
    return _service.getDoctors();
  }
}
