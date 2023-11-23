import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:mint/data/service/remote_agora.dart';

abstract class InitializeServiceUseCase {
  InitializeServiceUseCase();

  Future<void> call({
    required void Function(ErrorCodeType err, String msg) onError,
    required void Function(RtcConnection connection, int remoteUid, int elapsed)
        onUserJoined,
    required void Function(
      RtcConnection connection,
      int remoteUid,
      UserOfflineReasonType reason,
    ) onUserOffline,
    required void Function(RtcConnection connection, RtcStats stats) onRtcStats,
    required void Function(RtcConnection connection, int elapsed)
        onJoinChannelSuccess,
    required void Function(RtcConnection connection, RtcStats stats)
        onLeaveChannel,
  });
}

class RemoteInitializeServiceUseCase implements InitializeServiceUseCase {
  RemoteInitializeServiceUseCase(this._service);
  final RemoteAgoraService _service;

  @override
  Future<void> call({
    required void Function(ErrorCodeType err, String msg) onError,
    required void Function(RtcConnection connection, int remoteUid, int elapsed)
        onUserJoined,
    required void Function(
      RtcConnection connection,
      int remoteUid,
      UserOfflineReasonType reason,
    ) onUserOffline,
    required void Function(RtcConnection connection, RtcStats stats) onRtcStats,
    required void Function(RtcConnection connection, int elapsed)
        onJoinChannelSuccess,
    required void Function(RtcConnection connection, RtcStats stats)
        onLeaveChannel,
  }) {
    return _service.initialize(
      onError: onError,
      onUserJoined: onUserJoined,
      onUserOffline: onUserOffline,
      onRtcStats: onRtcStats,
      onJoinChannelSuccess: onJoinChannelSuccess,
      onLeaveChannel: onLeaveChannel,
    );
  }
}
