import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint/backbone/bloc_status.dart';

import 'package:mint/domain/usecases/change_speaker_mode_usecase.dart';
import 'package:mint/domain/usecases/dispose_service_usecase.dart';

import 'package:mint/domain/usecases/initialize_service_usecase.dart';

import 'package:mint/domain/usecases/leave_call_usecase.dart';
import 'package:mint/domain/usecases/local_video_view_get_usecase.dart';
import 'package:mint/domain/usecases/mute_microphone_usecase.dart';
import 'package:mint/domain/usecases/mute_video_usecase.dart';
import 'package:mint/domain/usecases/remote_video_view_get_usecase.dart';
import 'package:mint/domain/usecases/switch_camera_usecase.dart';

part 'media_chat_event.dart';
part 'media_chat_state.dart';
part 'media_chat_bloc.freezed.dart';

class MediaChatBloc extends Bloc<MediaChatEvent, MediaChatState> {
  MediaChatBloc(
    this._changeSpeakerModeUseCase,
    this._disposeServiceUseCase,
    this._initializeServiceUseCase,
    this._leaveCallUseCase,
    this._muteMicrophoneUseCase,
    this._switchCameraUseCase,
    this._getLocalVideoViewUseCase,
    this._getRemoteVideoViewUseCase,
    this._muteVideoUseCase,
  ) : super(const MediaChatState(status: MediaChatStatus.loading)) {
    on<MediaChatEvent>((event, emit) async {
      await event.when(
        getMicStatus: _getMicStatus,
        muteVideo: (isVideoMuted) =>
            _muteVideo(emit, isVideoMuted: isVideoMuted),
        userLeft: (uid) => _remoteUserLeft(emit, uid),
        userJoined: (uId) => _remoteUserJoin(emit, uId),
        joinAudioCall: () => _joinAudioCall(emit),
        joinVideoCall: () => _joinVideoCall(emit),
        leaveCall: _leaveCall,
        muteMic: (isMicToggled) =>
            _muteMicrophone(emit, isMicrophoneToggled: isMicToggled),
        toggleSpeaker: (isSpeakerOn) =>
            _changeSpeaker(emit, isSpeakerOn: isSpeakerOn),
        initializeService: (
          onError,
          onUserJoined,
          onUserOffline,
          onRtcStats,
          onJoinChannelSuccess,
          onLeaveChannel,
        ) {
          _initializeService(
            onError: onError,
            onUserJoined: onUserJoined,
            onUserOffline: onUserOffline,
            onRtcStats: onRtcStats,
            onJoinChannelSuccess: onJoinChannelSuccess,
            onLeaveChannel: onLeaveChannel,
          );
        },
        dispose: _disposeService,
        switchCamera: _switchCamera,
        updateCallTime: (calltime) => _updateCallTime(emit, calltime),
      );
    });
  }

  MediaChatState _onError(Object error) => MediaChatState(
        status: MediaChatStatus.error,
        error: error,
      );

  final SwitchCameraUseCase _switchCameraUseCase;
  final LeaveCallUseCase _leaveCallUseCase;
  final InitializeServiceUseCase _initializeServiceUseCase;
  final MuteMicrophoneUseCase _muteMicrophoneUseCase;
  final DisposeServiceUseCase _disposeServiceUseCase;
  final ChangeSpeakerModeUseCase _changeSpeakerModeUseCase;
  final GetLocalVideoViewUseCase _getLocalVideoViewUseCase;
  final GetRemoteVideoViewUseCase _getRemoteVideoViewUseCase;
  final MuteVideoUseCase _muteVideoUseCase;

  Future<void> _leaveCall() async {
    await _leaveCallUseCase.call();
  }

  Future<void> _getMicStatus() async {
    // isMicToggled = _getMicStatusUseCase.call();
  }

  Future<void> _joinAudioCall(Emitter<MediaChatState> emit) async {
    emit(
      MediaChatState(
        isVidToggled: false,
        status: MediaChatStatus.audio,
        userIds: const {},
        isJoined: true,
        calltime: state.calltime,
        isMicToggled: true,
        remoteView:
            state.userIds?.map(_getRemoteVideoViewUseCase.call).toList(),
        localView: state.localView,
      ),
    );
  }

  Future<void> _joinVideoCall(Emitter<MediaChatState> emit) async {
    emit(
      MediaChatState(
        status: MediaChatStatus.video,
        isVidToggled: true,
        userIds: state.userIds,
        isJoined: true,
        calltime: state.calltime,
        isMicToggled: state.isMicToggled,
        localView: _getLocalVideoViewUseCase.call(),
        remoteView:
            state.userIds?.map(_getRemoteVideoViewUseCase.call).toList(),
      ),
    );
  }

  Future<void> _remoteUserJoin(
    Emitter<MediaChatState> emit,
    int uid,
  ) async {
    final uids = state.userIds?..add(uid);
    emit(
      MediaChatState(
        status: state.status,
        isVidToggled: state.isVidToggled,
        userIds: uids,
        isJoined: state.isJoined,
        calltime: state.calltime,
        localView: state.localView,
        remoteView: [_getRemoteVideoViewUseCase.call(uid)],
        isMicToggled: state.isMicToggled,
      ),
    );
  }

  Future<void> _remoteUserLeft(
    Emitter<MediaChatState> emit,
    int uid,
  ) async {
    final uids = state.userIds?..remove(uid);

    emit(
      MediaChatState(
        status: state.status,
        isVidToggled: state.isVidToggled,
        userIds: uids,
        isJoined: state.isJoined,
        calltime: state.calltime,
        localView: state.localView,
        remoteView: const [],
        isMicToggled: state.isMicToggled,
      ),
    );
  }

  Future<void> _updateCallTime(
    Emitter<MediaChatState> emit,
    int eventCalltime,
  ) async {
    emit(
      MediaChatState(
        status: state.status,
        isVidToggled: state.isVidToggled,
        userIds: state.userIds,
        isJoined: state.isJoined,
        calltime: eventCalltime,
        isMicToggled: state.isMicToggled,
        localView: state.localView,
        remoteView: state.remoteView,
      ),
    );
  }

  Future<void> _initializeService({
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
    await _initializeServiceUseCase.call(
      onError: onError,
      onUserJoined: onUserJoined,
      onUserOffline: onUserOffline,
      onRtcStats: onRtcStats,
      onJoinChannelSuccess: onJoinChannelSuccess,
      onLeaveChannel: onLeaveChannel,
    );
  }

  Future<void> _switchCamera() async {
    await _switchCameraUseCase.call();
  }

  Future<void> _muteVideo(
    Emitter<MediaChatState> emit, {
    required bool isVideoMuted,
  }) async {
    await _muteVideoUseCase.call(isVideoMuted: isVideoMuted);
    emit(
      MediaChatState(
        status: MediaChatStatus.audio,
        isVidToggled: false,
        isJoined: state.isJoined,
        isMicToggled: state.isMicToggled,
        localView: state.localView,
        remoteView: state.remoteView,
        userIds: state.userIds,
        calltime: state.calltime,
      ),
    );
  }

  Future<void> _disposeService() async {
    await _disposeServiceUseCase.call();
  }

  Future<void> _muteMicrophone(
    Emitter<MediaChatState> emit, {
    required bool isMicrophoneToggled,
  }) async {
    await _muteMicrophoneUseCase.call(isMicToggled: !isMicrophoneToggled);
    emit(
      MediaChatState(
        status: state.status,
        isJoined: state.isJoined,
        userIds: state.userIds,
        calltime: state.calltime,
        localView: state.localView,
        remoteView: state.remoteView,
        isMicToggled: !isMicrophoneToggled,
        isVidToggled: state.isVidToggled,
      ),
    );
  }

  Future<void> _changeSpeaker(
    Emitter<MediaChatState> emit, {
    required bool isSpeakerOn,
  }) async {
    await _changeSpeakerModeUseCase.call(isSpeakerOn: isSpeakerOn);
    emit(
      MediaChatState(
        status: state.status,
        isJoined: state.isJoined,
        userIds: state.userIds,
        calltime: state.calltime,
        isMicToggled: state.isMicToggled,
        isVidToggled: state.isVidToggled,
      ),
    );
  }
}
