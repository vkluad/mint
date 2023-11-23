import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:mint/data/gateway/agora_chat_gateway.dart';
import 'package:mint/domain/services/agora_service.dart';

class RemoteAgoraService implements VideoAudioChatService {
  RemoteAgoraService(this._gateway);

  final AgoraChatGateway _gateway;

  @override
  Future<void> initialize({
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
  }) async {
    await _gateway.initialize(
      onError: onError,
      onUserJoined: onUserJoined,
      onUserOffline: onUserOffline,
      onRtcStats: onRtcStats,
      onJoinChannelSuccess: onJoinChannelSuccess,
      onLeaveChannel: onLeaveChannel,
    );
  }

  @override
  Future<void> changeSpeakerMode({required bool isSpeakerOn}) async {
    await _gateway.changeSpeakerMode(isSpeakerOn: isSpeakerOn);
  }

  @override
  Future<void> leaveCall() async {
    await _gateway.leaveCall();
  }

  @override
  Future<void> switchCamera() async {
    await _gateway.switchCameraSide();
  }

  @override
  Future<void> toggleCamera({required bool isVideoMuted}) async {
    await _gateway.toggleCamera(isVideoMuted: !isVideoMuted);
  }

  @override
  Future<void> startPreview() async {
    await _gateway.startPreview();
  }

  @override
  AgoraVideoView getLocalAgoraVideoView() {
    return _gateway.getLocalAgoraVideoView();
  }

  @override
  AgoraVideoView getRemoteAgoraVideoView(int userId) {
    return _gateway.getRemoteAgoraVideoView(userId);
  }

  @override
  Future<void> muteMic({required bool isMicToggled}) async {
    await _gateway.muteMic(isMicToggled: isMicToggled);
  }

  @override
  Future<void> dispose() async {
    await _gateway.dispose();
  }
}
