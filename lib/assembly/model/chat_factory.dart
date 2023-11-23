import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mint/assembly/factory.dart';

import 'package:mint/data/model/message_dto.dart';

class MessageDtoFromJsonFactory
    implements Factory<MessageDto, Map<String, dynamic>> {
  @override
  MessageDto create(Map<String, dynamic> param) => MessageDto(
        toId: param['toId'] as String? ?? '',
        fromId: param['fromId'] as String,
        sent: (param['sent'] as Timestamp).toDate(),
        read: (param['read'] as Timestamp?)?.toDate(),
        type: param['type'] as String,
        msg: param['msg'] as String?,
        messageId: param['msgId'] as String,
      );
}
