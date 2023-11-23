import 'package:mint/assembly/factory.dart';
import 'package:mint/data/model/notification_dto.dart';
import 'package:mint/domain/entity/notification.dart';

class UserNotificationFromDtoFactory
    implements Factory<UserNotification, UserNotificationDto> {
  @override
  UserNotification create(UserNotificationDto param) => UserNotification(
        type: param.type,
        id: param.id,
        text: param.text,
        isRead: param.isRead,
        timeSent: param.timeSent,
        navigationId: param.navigationId,
      );
}
