import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint/domain/entity/booking.dart';
import 'package:mint/domain/usecases/create_booking_usecase.dart';
import 'package:mint/domain/usecases/get_bookings_usecase.dart';

import 'package:mint/domain/usecases/remove_booking_usecase.dart';
import 'package:mint/domain/usecases/update_booking_status.dart';
import 'package:mint/domain/usecases/update_time_usecase.dart';

part 'booking_event.dart';
part 'booking_state.dart';
part 'booking_bloc.freezed.dart';

class BookingBloc extends Bloc<BookingEvent, BookingState> {
  BookingBloc(
    this._getBookingsUseCase,
    this._createBookingUseCase,
    this._removeBookingUseCase,
    this._updateBookingTimeUseCase,
    this._updateBookingStatusUseCase,
  ) : super(const _Initial()) {
    on<BookingEvent>((event, emit) async {
      await event.when(
        getBooks: () async => _getBookings(emit),
        createBooks: (price, doctorId, time, description) async {
          await _createBooking(
            emit,
            price: price,
            doctorId: doctorId,
            time: time,
            description: description,
          );
        },
        removeBooks: (booking, doctorId) async => _removeBooking(
          emit,
          booking,
          doctorId,
        ),
        updateBookingStatus: _updateBookingStatus,
        updateBooks: (bookingId, doctorId, newDate) async =>
            _updateBookingTime(emit, bookingId, doctorId, newDate),
      );
    });
  }

  final GetBookingsUseCase _getBookingsUseCase;
  final CreateBookingUseCase _createBookingUseCase;
  final RemoveBookingUseCase _removeBookingUseCase;
  final UpdateBookingTimeUseCase _updateBookingTimeUseCase;
  final UpdateBookingStatusUseCase _updateBookingStatusUseCase;

  Future<void> _getBookings(Emitter<BookingState> emit) async {
    emit(const _Loading());
    try {
      await emit.forEach(
        _getBookingsUseCase.call(),
        onData: (bookings) {
          final loadedBookings = <Booking>[];
          for (final booking in bookings) {
            loadedBookings.add(booking);
          }
          final sortedBookings = loadedBookings
            ..sort((a, b) => a.time.compareTo(b.time));
          return _Loaded(sortedBookings);
        },
      );
    } catch (e) {
      emit(_Error(e.toString()));
      throw Exception(e);
    }
  }

  Future<void> _createBooking(
    Emitter<BookingState> emit, {
    required int price,
    required String doctorId,
    required DateTime time,
    String? description,
  }) async {
    await _createBookingUseCase.call(
      price: price,
      doctorId: doctorId,
      time: time,
      description: description,
    );
  }

  Future<void> _removeBooking(
    Emitter<BookingState> emit,
    String bookingId,
    String doctorId,
  ) async {
    await _removeBookingUseCase.call(
      bookingId,
      doctorId,
    );
  }

  Future<void> _updateBookingStatus(
    String bookingId,
  ) async {
    await _updateBookingStatusUseCase.call(bookingId);
  }

  Future<void> _updateBookingTime(
    Emitter<BookingState> emit,
    String bookingId,
    String doctorId,
    DateTime newDate,
  ) async {
    await _updateBookingTimeUseCase.call(bookingId, doctorId, newDate);
  }
}
