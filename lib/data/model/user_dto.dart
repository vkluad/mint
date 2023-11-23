class UserDto {
  UserDto({
    required this.id,
    required this.number,
    this.firstName,
    this.favourites,
    this.lastName,
    this.dateOfBirth,
    this.userPin,
    this.image,
  });
  final String id;
  final String? firstName;
  final String? image;
  final DateTime? dateOfBirth;
  final String? lastName;
  final String? userPin;
  final String number;
  final List<String?>? favourites;
}
