part of 'booking_bloc.dart';

@freezed
class BookingState with _$BookingState {
  const factory BookingState.initial() = _Initial;
  const factory BookingState.loaded(List<Booking> bookings) = _Loaded;
  const factory BookingState.loading() = _Loading;
  const factory BookingState.error(String error) = _Error;
}
