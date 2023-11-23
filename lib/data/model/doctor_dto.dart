import 'package:mint/domain/entity/booking.dart';

class DoctorDto {
  DoctorDto({
    required this.isOnline,
    required this.rating,
    required this.price,
    required this.id,
    required this.name,
    this.image,
    this.description,
    this.educationDesc,
    this.profession,
    this.specialities,
    this.experience,
    this.bookings,
  });
  final String id;
  final String name;
  final String? image;
  final String? description;
  final String? educationDesc;
  final String? profession;
  final double rating;
  final int price;
  final bool? isOnline;
  final List<String>? specialities;
  final int? experience;
  final List<Booking>? bookings;
}
