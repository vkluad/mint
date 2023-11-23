import 'package:mint/assembly/factory.dart';
import 'package:mint/data/model/booking_dto.dart';
import 'package:mint/domain/entity/booking.dart';

class BookingFromDtoFactory implements Factory<Booking, BookingDto> {
  @override
  Booking create(BookingDto param) => Booking(
        id: param.id,
        description: param.description,
        price: param.price,
        doctorId: param.doctorId,
        time: param.time,
        isCompleted: param.isCompleted ?? false,
      );
}
