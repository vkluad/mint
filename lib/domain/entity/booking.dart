class Booking {
  Booking({
    required this.price,
    required this.description,
    required this.doctorId,
    required this.time,
    required this.isCompleted,
    required this.id,
  });
  final String id;
  final DateTime time;
  final String doctorId;
  final String? description;
  final int price;
  final bool isCompleted;
}
