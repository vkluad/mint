part of 'media_chat_bloc.dart';

@immutable
class MediaChatState {
  const MediaChatState({
    required this.status,
    this.isJoined,
    this.userIds,
    this.calltime,
    this.videoIds,
    this.isMicToggled,
    this.isVidToggled,
    this.error,
    this.remoteView,
    this.localView,
  });
  final MediaChatStatus status;
  final bool? isJoined;
  final Set<int>? userIds;
  final Set<int>? videoIds;
  final int? calltime;
  final bool? isMicToggled;
  final bool? isVidToggled;
  final AgoraVideoView? localView;
  final List<AgoraVideoView>? remoteView;
  final Object? error;
}
