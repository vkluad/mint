class BookingDto {
  BookingDto({
    required this.price,
    required this.id,
    required this.description,
    required this.doctorId,
    required this.time,
    required this.isCompleted,
  });
  final String id;
  final DateTime time;
  final String doctorId;
  final String? description;
  final int price;
  final bool? isCompleted;
}
