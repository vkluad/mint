class UserNotificationDto {
  UserNotificationDto({
    required this.id,
    required this.type,
    required this.text,
    required this.timeSent,
    required this.navigationId,
    this.isRead,
  });

  final String id;
  final String type;
  final String text;
  final String navigationId;
  final bool? isRead;
  final DateTime timeSent;
}
