import 'package:mint/domain/services/doctors_service.dart';

abstract class MarkAsFavouriteUseCase {
  MarkAsFavouriteUseCase();

  Future<void> call(String doctorId);
}

class FirestoreMarkAsFavouriteUseCase implements MarkAsFavouriteUseCase {
  FirestoreMarkAsFavouriteUseCase(this._service);
  final DoctorService _service;

  @override
  Future<void> call(String doctorId) async {
    await _service.markAsFavourite(doctorId);
  }
}
