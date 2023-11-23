class MessageDto {
  MessageDto({
    required this.toId,
    required this.fromId,
    required this.sent,
    required this.type,
    required this.msg,
    required this.messageId,
    this.read,
  });
  final String messageId;
  final String? msg;
  final String type;
  final DateTime sent;
  final DateTime? read;
  final String toId;
  final String fromId;
}
