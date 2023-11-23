import 'package:mint/domain/services/booking_service.dart';

abstract class UpdateBookingStatusUseCase {
  UpdateBookingStatusUseCase();

  Future<void> call(
    String bookingId,
  );
}

class FirestoreUpdateBookingStatusUseCase
    implements UpdateBookingStatusUseCase {
  FirestoreUpdateBookingStatusUseCase(this.service);
  final BookingService service;
  @override
  Future<void> call(
    String bookingId,
  ) async {
    await service.updateBookingStatus(bookingId);
  }
}
