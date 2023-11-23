import 'package:mint/assembly/entity/booking_from_dto_factory.dart';
import 'package:mint/assembly/factory.dart';
import 'package:mint/assembly/model/booking_factory.dart';
import 'package:mint/data/model/doctor_dto.dart';

class DoctorDtoFromJsonFactory
    implements Factory<DoctorDto, Map<String, dynamic>> {
  final BookingDtoFromJsonFactory dtoFromJsonFactory =
      BookingDtoFromJsonFactory();
  final BookingFromDtoFactory bookingFromDtoFactory = BookingFromDtoFactory();
  @override
  DoctorDto create(Map<String, dynamic> param) => DoctorDto(
        id: param['id'] as String,
        name: param['name'] as String,
        image: param['image'] as String?,
        description: param['description'] as String?,
        educationDesc: param['education_desc'] as String?,
        profession: param['profession'] as String?,
        specialities: (param['specialities'] as List<dynamic>?)
            ?.map((speciality) => speciality.toString())
            .toList(),
        rating: param['rating'] as double? ?? 0,
        price: param['price'] as int? ?? 0,
        experience: param['experience'] as int?,
        isOnline: param['online'] as bool?,
        bookings: (param['bookings'] as List<dynamic>?)
            ?.map(
              (booking) => bookingFromDtoFactory.create(
                dtoFromJsonFactory.create(booking as Map<String, dynamic>),
              ),
            )
            .toList(),
      );
}
