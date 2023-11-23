import 'package:mint/domain/entity/booking.dart';

import 'package:mint/domain/services/booking_service.dart';

abstract class GetBookingsUseCase {
  GetBookingsUseCase();

  Stream<List<Booking>> call();
}

class FirestoreGetBookingsUseCase implements GetBookingsUseCase {
  FirestoreGetBookingsUseCase(this._service);
  final BookingService _service;

  @override
  Stream<List<Booking>> call() {
    return _service.getBooks();
  }
}
