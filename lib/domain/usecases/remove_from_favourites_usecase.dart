import 'package:mint/domain/services/doctors_service.dart';

abstract class RemoveFromFavouritesUseCase {
  RemoveFromFavouritesUseCase();

  Future<void> call(String doctorId);
}

class FirestoreRemoveFromFavouritesUseCase
    implements RemoveFromFavouritesUseCase {
  FirestoreRemoveFromFavouritesUseCase(this._service);
  final DoctorService _service;

  @override
  Future<void> call(String doctorId) async {
    await _service.removeFromFavourites(doctorId);
  }
}
