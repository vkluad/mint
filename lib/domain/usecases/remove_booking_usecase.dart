import 'package:mint/domain/services/booking_service.dart';

abstract class RemoveBookingUseCase {
  RemoveBookingUseCase();

  Future<void> call(
    String bookingId,
    String doctorId,
  );
}

class FirestoreRemoveBookingUseCase implements RemoveBookingUseCase {
  FirestoreRemoveBookingUseCase(this.service);
  final BookingService service;
  @override
  Future<void> call(
    String bookingId,
    String doctorId,
  ) async {
    await service.removeBooking(
      bookingId,
      doctorId,
    );
  }
}
