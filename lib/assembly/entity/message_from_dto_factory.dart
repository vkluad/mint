import 'package:mint/assembly/factory.dart';
import 'package:mint/data/model/message_dto.dart';
import 'package:mint/domain/entity/message.dart';

class MessageFromDtoFactory implements Factory<Message, MessageDto> {
  @override
  Message create(MessageDto param) => Message(
        toId: param.toId,
        type: param.type,
        msg: param.msg,
        fromId: param.fromId,
        read: param.read,
        sent: param.sent,
        messageId: param.messageId,
      );
}
