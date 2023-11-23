import 'package:agora_rtc_engine/agora_rtc_engine.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

class AgoraChatGateway {
  RtcEngine? _engine;

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
    _engine = createAgoraRtcEngine();
    await _engine?.initialize(
      RtcEngineContext(
        appId: dotenv.env['appId'],
      ),
    );

    _engine?.registerEventHandler(
      RtcEngineEventHandler(
        onError: onError,
        onUserJoined: onUserJoined,
        onUserOffline: onUserOffline,
        onRtcStats: onRtcStats,
        onJoinChannelSuccess: onJoinChannelSuccess,
        onLeaveChannel: onLeaveChannel,
      ),
    );

    await _engine?.enableAudio();
    await _engine?.enableVideo();
    await _engine?.setClientRole(role: ClientRoleType.clientRoleBroadcaster);
    await _engine?.setAudioProfile(
      profile: AudioProfileType.audioProfileDefault,
      scenario: AudioScenarioType.audioScenarioGameStreaming,
    );
    await _engine?.adjustRecordingSignalVolume(75);
    await _engine?.adjustPlaybackSignalVolume(100);
    await _engine?.joinChannel(
      token: dotenv.env['token'] ?? '',
      channelId: dotenv.env['channelId'] ?? '',
      uid: int.parse(dotenv.env['uid']!),
      options: const ChannelMediaOptions(
        channelProfile: ChannelProfileType.channelProfileLiveBroadcasting,
        clientRoleType: ClientRoleType.clientRoleBroadcaster,
      ),
    );
  }

  Future<void> changeSpeakerMode({required bool isSpeakerOn}) async {
    await _engine?.setEnableSpeakerphone(isSpeakerOn);
  }

  Future<void> leaveCall() async {
    await _engine?.leaveChannel();
    await dispose();
  }

  Future<void> switchCameraSide() async {
    await _engine?.switchCamera();
  }

  Future<void> toggleCamera({required bool isVideoMuted}) async {
    isVideoMuted = !isVideoMuted;
    if (isVideoMuted) {
      await _engine?.enableLocalVideo(false);
      await _engine?.disableVideo();
      await _engine?.stopPreview();
    } else {
      await _engine?.enableLocalVideo(true);
      await _engine?.enableVideo();
      await _engine?.startPreview();
    }
  }

  Future<void> startPreview() async {
    await _engine?.startPreview();
  }

  AgoraVideoView getLocalAgoraVideoView() {
    return AgoraVideoView(
      controller: VideoViewController(
        rtcEngine: _engine ?? createAgoraRtcEngine(),
        canvas: const VideoCanvas(uid: 0),
      ),
      onAgoraVideoViewCreated: (viewId) async {
        await _engine?.startPreview();
      },
    );
  }

  AgoraVideoView getRemoteAgoraVideoView(int userId) {
    return AgoraVideoView(
      controller: VideoViewController.remote(
        rtcEngine: _engine ?? createAgoraRtcEngine(),
        canvas: VideoCanvas(uid: userId),
        connection: RtcConnection(channelId: dotenv.env['channelId'] ?? ''),
      ),
    );
  }

  Future<void> muteMic({required bool isMicToggled}) async {
    await _engine?.enableLocalAudio(!isMicToggled);
  }

  Future<void> dispose() async {
    await _engine?.leaveChannel();
    await _engine?.release();
  }

  Stream<bool>? speakerPhoneStatus() {
    return _engine?.isSpeakerphoneEnabled().asStream();
  }
}
