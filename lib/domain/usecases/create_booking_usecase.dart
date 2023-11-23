import 'package:mint/domain/services/booking_service.dart';

abstract class CreateBookingUseCase {
  CreateBookingUseCase();

  Future<void> call({
    required int price,
    required String doctorId,
    required DateTime time,
    String? description,
  });
}

class FirestoreCreateBookingUseCase implements CreateBookingUseCase {
  FirestoreCreateBookingUseCase(this.service);
  final BookingService service;
  @override
  Future<void> call({
    required int price,
    required String doctorId,
    required DateTime time,
    String? description,
  }) async {
    await service.createBooking(
      price: price,
      doctorId: doctorId,
      time: time,
      description: description,
    );
  }
}
