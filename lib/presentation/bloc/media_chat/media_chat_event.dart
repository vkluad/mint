part of 'media_chat_bloc.dart';

@freezed
class MediaChatEvent with _$MediaChatEvent {
  const factory MediaChatEvent.joinAudioCall() = JoinAudioCallEvent;
  const factory MediaChatEvent.joinVideoCall() = JoinVideoCallEvent;
  const factory MediaChatEvent.leaveCall() = LeaveCallEvent;
  const factory MediaChatEvent.muteMic({required bool isMicToggled}) =
      MuteMicEvent;
  const factory MediaChatEvent.toggleSpeaker({required bool isSpeakerOn}) =
      ToggleSpeakerEvent;
  const factory MediaChatEvent.initializeService({
    required void Function(dynamic err, String msg) onError,
    required void Function(dynamic connection, int remoteUid, int elapsed)
        onUserJoined,
    required void Function(
      dynamic connection,
      int remoteUid,
      dynamic reason,
    ) onUserOffline,
    required void Function(dynamic connection, dynamic stats) onRtcStats,
    required void Function(dynamic connection, int elapsed)
        onJoinChannelSuccess,
    required void Function(dynamic connection, dynamic stats) onLeaveChannel,
  }) = InititializeServiceEvent;
  const factory MediaChatEvent.getMicStatus() = GetMicStatusEvent;
  const factory MediaChatEvent.dispose() = DisposeServiceEvent;
  const factory MediaChatEvent.switchCamera() = SwitchCameraEvent;
  const factory MediaChatEvent.muteVideo({required bool isVideoMuted}) =
      MuteVideoEvent;
  const factory MediaChatEvent.updateCallTime(int calltime) =
      UpdateCallTimeEvent;
  const factory MediaChatEvent.userJoined(int uid) = UserJoinedEvent;
  const factory MediaChatEvent.userLeft(int uid) = UserLeftEvent;
}
