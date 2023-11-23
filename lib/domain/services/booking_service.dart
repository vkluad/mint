import 'package:mint/domain/entity/booking.dart';

abstract class BookingService {
  Stream<List<Booking>> getBooks();

  Future<void> createBooking({
    required int price,
    required String doctorId, required DateTime time, String? description,
  });
  Future<void> removeBooking(
    String bookingId,
    String doctorId,
  );
  Future<void> updateBooking(
      String bookingId, String doctorId, DateTime newDate,);
  Future<void> updateBookingStatus(String bookingId);
}
