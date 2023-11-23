part of 'booking_bloc.dart';

@freezed
class BookingEvent with _$BookingEvent {
  const factory BookingEvent.getBooks() = GetBookingsEvent;
  const factory BookingEvent.createBooks({
    required int price,
    required String doctorId,
    required DateTime time,
    String? description,
  }) = CreateBookingEvent;
  const factory BookingEvent.removeBooks(
    String bookingId,
    String doctorId,
  ) = RemoveBookingEvent;
  const factory BookingEvent.updateBooks(
          String bookingId, String doctorId, DateTime newDate,) =
      UpdateBookingTimeEvent;
  const factory BookingEvent.updateBookingStatus(String bookingId) =
      UpdateBookingStatusEvent;
}
