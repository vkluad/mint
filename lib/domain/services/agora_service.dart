import 'package:agora_rtc_engine/agora_rtc_engine.dart';

abstract class VideoAudioChatService {
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
  });
  Future<void> muteMic({required bool isMicToggled});
  Future<void> changeSpeakerMode({required bool isSpeakerOn});
  Future<void> leaveCall();
  Future<void> switchCamera();
  Future<void> startPreview();
  Future<void> toggleCamera({required bool isVideoMuted});
  AgoraVideoView getRemoteAgoraVideoView(int uid);
  AgoraVideoView getLocalAgoraVideoView();

  Future<void> dispose();
}
