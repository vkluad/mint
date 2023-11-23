import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mint/assembly/factory.dart';

import 'package:mint/data/model/notification_dto.dart';

class UserNotificationDtoFromJsonFactory
    implements Factory<UserNotificationDto, Map<String, dynamic>> {
  @override
  UserNotificationDto create(Map<String, dynamic> param) => UserNotificationDto(
        type: param['type'] as String,
        text: param['text'] as String,
        isRead: param['isRead'] as bool?,
        id: param['id'] as String,
        timeSent: (param['timeSent'] as Timestamp).toDate(),
        navigationId: param['navigationId'] as String,
      );
}
