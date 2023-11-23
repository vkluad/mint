import 'package:mint/assembly/factory.dart';
import 'package:mint/data/model/doctor_dto.dart';
import 'package:mint/domain/entity/doctor.dart';

class DoctorFromDtoFactory implements Factory<Doctor, DoctorDto> {
  @override
  Doctor create(DoctorDto param) => Doctor(
        id: param.id,
        name: param.name,
        image: param.image,
        description: param.description,
        educationDesc: param.educationDesc,
        profession: param.profession,
        rating: param.rating,
        price: param.price,
        experience: param.experience,
        specialities: param.specialities,
        isOnline: param.isOnline,
        bookings: param.bookings,
      );
}
