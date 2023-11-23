part of 'permission_bloc.dart';

@freezed
class PermissionEvent with _$PermissionEvent {
  const factory PermissionEvent.requestChatPermission() =
      RequestChatPermissionEvent;
  const factory PermissionEvent.requestNotificationPermission() =
      RequestNotificationPermissionEvent;
  const factory PermissionEvent.getChatPermission() = GetChatPermissionEvent;
  const factory PermissionEvent.getNotificationPermission() =
      GetNotificationPermissionEvent;
}
