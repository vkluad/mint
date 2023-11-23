enum MediaChatStatus {
  audio,
  video,
  error,
  loading,
}

enum PermissionNotificationStatus {
  waitingForPermission,
  allPermissionsGranted,
  mediaPermissionDenied,
  notificationPermissionDenied,
  mediaPermissionGranted,
  notificationPermissionGranted,
}

enum PinStatus {
  noPin,
  enterPin,
  setNewPin,
  confirmPin,
  enterCurrentPin,
  pinEntered,
  error,
  loading,
}
