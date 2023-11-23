import 'package:mint/assembly/factory.dart';
import 'package:mint/data/model/user_dto.dart';
import 'package:mint/domain/entity/user.dart' as user_entity;

class UserFromDtoFactory implements Factory<user_entity.User, UserDto> {
  @override
  user_entity.User create(UserDto param) => user_entity.User(
        id: param.id,
        lastName: param.lastName,
        firstName: param.firstName,
        dateOfBirth: param.dateOfBirth,
        userPin: param.userPin,
        image: param.image,
        number: param.number,
        favourites: param.favourites,
      );
}
