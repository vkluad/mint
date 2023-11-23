import 'package:mint/domain/services/booking_service.dart';

abstract class UpdateBookingTimeUseCase {
  UpdateBookingTimeUseCase();

  Future<void> call(String bookingId, String doctorId, DateTime newDate);
}

class FirestoreUpdateBookingTimeUseCase implements UpdateBookingTimeUseCase {
  FirestoreUpdateBookingTimeUseCase(this.service);
  final BookingService service;
  @override
  Future<void> call(
    String bookingId,
    String doctorId,
    DateTime newDate,
  ) async {
    await service.updateBooking(bookingId, doctorId, newDate);
  }
}
