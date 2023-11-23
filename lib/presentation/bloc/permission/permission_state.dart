part of 'permission_bloc.dart';

@immutable
class PermissionState {
  const PermissionState({
    required this.status,
    this.isAudioGranted,
    this.isVideoGranted,
    this.isNotificationGranted,
    this.error,
  });
  final PermissionNotificationStatus status;
  final bool? isAudioGranted;
  final bool? isVideoGranted;
  final bool? isNotificationGranted;

  final Object? error;
}
