import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mint/assembly/factory.dart';

import 'package:mint/data/model/user_dto.dart';

class UserDtoFromJsonFactory implements Factory<UserDto, Map<String, dynamic>> {
  @override
  UserDto create(Map<String, dynamic> param) => UserDto(
        id: param['id'] as String,
        number: param['number'] as String,
        lastName: param['lastName'] as String?,
        firstName: param['firstName'] as String?,
        dateOfBirth: (param['dateOfBirth'] as Timestamp?)?.toDate(),
        userPin: param['userPin'] as String?,
        image: param['image'] as String?,
        favourites: (param['favourites'] as List<dynamic>?)
            ?.map(
              (doctorId) => doctorId as String?,
            )
            .toList(),
      );
}
