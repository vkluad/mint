import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mint/assembly/factory.dart';
import 'package:mint/data/model/booking_dto.dart';

class BookingDtoFromJsonFactory
    implements Factory<BookingDto, Map<String, dynamic>> {
  @override
  BookingDto create(Map<String, dynamic> param) => BookingDto(
        id: param['id'] as String,
        description: param['description'] as String?,
        doctorId: param['doctorId'] as String,
        time: (param['time'] as Timestamp).toDate(),
        price: param['price'] as int,
        isCompleted: param['isCompleted'] as bool?,
      );
}
