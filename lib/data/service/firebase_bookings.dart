import 'package:mint/data/gateway/firebase_booking_gateway.dart';

import 'package:mint/domain/entity/booking.dart';

import 'package:mint/domain/services/booking_service.dart';

class FirebaseBookingsService implements BookingService {
  FirebaseBookingsService(this._gateway);
  final FirebaseBookingGateway _gateway;

  @override
  Future<void> createBooking({
    required int price,
    required String doctorId,
    required DateTime time,
    String? description,
  }) async {
    try {
      await _gateway.createBooking(
        price: price,
        time: time,
        doctorId: doctorId,
        description: description,
      );
    } catch (e) {
      throw Exception('Failed to create booking.');
    }
  }

  @override
  Future<void> updateBooking(
    String bookingId,
    String doctorId,
    DateTime newDate,
  ) async {
    try {
      await _gateway.updateBookingDate(bookingId, doctorId, newDate);
    } catch (e) {
      throw Exception('Failed to update booking.');
    }
  }

  @override
  Future<void> removeBooking(
    String bookingId,
    String doctorId,
  ) async {
    try {
      await _gateway.removeBooking(bookingId, doctorId);
    } catch (e) {
      throw Exception('Failed to delete booking.');
    }
  }

  @override
  Future<void> updateBookingStatus(
    String bookingId,
  ) async {
    try {
      await _gateway.updateBookingStatus(bookingId);
    } catch (e) {
      throw Exception('Failed to update booking status.');
    }
  }

  @override
  Stream<List<Booking>> getBooks() {
    return _gateway.getBooks();
  }
}
