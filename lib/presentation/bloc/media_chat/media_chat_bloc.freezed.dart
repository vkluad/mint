// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MediaChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() joinAudioCall,
    required TResult Function() joinVideoCall,
    required TResult Function() leaveCall,
    required TResult Function(bool isMicToggled) muteMic,
    required TResult Function(bool isSpeakerOn) toggleSpeaker,
    required TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)
        initializeService,
    required TResult Function() getMicStatus,
    required TResult Function() dispose,
    required TResult Function() switchCamera,
    required TResult Function(bool isVideoMuted) muteVideo,
    required TResult Function(int calltime) updateCallTime,
    required TResult Function(int uid) userJoined,
    required TResult Function(int uid) userLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? joinAudioCall,
    TResult? Function()? joinVideoCall,
    TResult? Function()? leaveCall,
    TResult? Function(bool isMicToggled)? muteMic,
    TResult? Function(bool isSpeakerOn)? toggleSpeaker,
    TResult? Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult? Function()? getMicStatus,
    TResult? Function()? dispose,
    TResult? Function()? switchCamera,
    TResult? Function(bool isVideoMuted)? muteVideo,
    TResult? Function(int calltime)? updateCallTime,
    TResult? Function(int uid)? userJoined,
    TResult? Function(int uid)? userLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? joinAudioCall,
    TResult Function()? joinVideoCall,
    TResult Function()? leaveCall,
    TResult Function(bool isMicToggled)? muteMic,
    TResult Function(bool isSpeakerOn)? toggleSpeaker,
    TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult Function()? getMicStatus,
    TResult Function()? dispose,
    TResult Function()? switchCamera,
    TResult Function(bool isVideoMuted)? muteVideo,
    TResult Function(int calltime)? updateCallTime,
    TResult Function(int uid)? userJoined,
    TResult Function(int uid)? userLeft,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JoinAudioCallEvent value) joinAudioCall,
    required TResult Function(JoinVideoCallEvent value) joinVideoCall,
    required TResult Function(LeaveCallEvent value) leaveCall,
    required TResult Function(MuteMicEvent value) muteMic,
    required TResult Function(ToggleSpeakerEvent value) toggleSpeaker,
    required TResult Function(InititializeServiceEvent value) initializeService,
    required TResult Function(GetMicStatusEvent value) getMicStatus,
    required TResult Function(DisposeServiceEvent value) dispose,
    required TResult Function(SwitchCameraEvent value) switchCamera,
    required TResult Function(MuteVideoEvent value) muteVideo,
    required TResult Function(UpdateCallTimeEvent value) updateCallTime,
    required TResult Function(UserJoinedEvent value) userJoined,
    required TResult Function(UserLeftEvent value) userLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult? Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult? Function(LeaveCallEvent value)? leaveCall,
    TResult? Function(MuteMicEvent value)? muteMic,
    TResult? Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult? Function(InititializeServiceEvent value)? initializeService,
    TResult? Function(GetMicStatusEvent value)? getMicStatus,
    TResult? Function(DisposeServiceEvent value)? dispose,
    TResult? Function(SwitchCameraEvent value)? switchCamera,
    TResult? Function(MuteVideoEvent value)? muteVideo,
    TResult? Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult? Function(UserJoinedEvent value)? userJoined,
    TResult? Function(UserLeftEvent value)? userLeft,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult Function(LeaveCallEvent value)? leaveCall,
    TResult Function(MuteMicEvent value)? muteMic,
    TResult Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult Function(InititializeServiceEvent value)? initializeService,
    TResult Function(GetMicStatusEvent value)? getMicStatus,
    TResult Function(DisposeServiceEvent value)? dispose,
    TResult Function(SwitchCameraEvent value)? switchCamera,
    TResult Function(MuteVideoEvent value)? muteVideo,
    TResult Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult Function(UserJoinedEvent value)? userJoined,
    TResult Function(UserLeftEvent value)? userLeft,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaChatEventCopyWith<$Res> {
  factory $MediaChatEventCopyWith(
          MediaChatEvent value, $Res Function(MediaChatEvent) then) =
      _$MediaChatEventCopyWithImpl<$Res, MediaChatEvent>;
}

/// @nodoc
class _$MediaChatEventCopyWithImpl<$Res, $Val extends MediaChatEvent>
    implements $MediaChatEventCopyWith<$Res> {
  _$MediaChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$JoinAudioCallEventImplCopyWith<$Res> {
  factory _$$JoinAudioCallEventImplCopyWith(_$JoinAudioCallEventImpl value,
          $Res Function(_$JoinAudioCallEventImpl) then) =
      __$$JoinAudioCallEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$JoinAudioCallEventImplCopyWithImpl<$Res>
    extends _$MediaChatEventCopyWithImpl<$Res, _$JoinAudioCallEventImpl>
    implements _$$JoinAudioCallEventImplCopyWith<$Res> {
  __$$JoinAudioCallEventImplCopyWithImpl(_$JoinAudioCallEventImpl _value,
      $Res Function(_$JoinAudioCallEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$JoinAudioCallEventImpl implements JoinAudioCallEvent {
  const _$JoinAudioCallEventImpl();

  @override
  String toString() {
    return 'MediaChatEvent.joinAudioCall()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$JoinAudioCallEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() joinAudioCall,
    required TResult Function() joinVideoCall,
    required TResult Function() leaveCall,
    required TResult Function(bool isMicToggled) muteMic,
    required TResult Function(bool isSpeakerOn) toggleSpeaker,
    required TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)
        initializeService,
    required TResult Function() getMicStatus,
    required TResult Function() dispose,
    required TResult Function() switchCamera,
    required TResult Function(bool isVideoMuted) muteVideo,
    required TResult Function(int calltime) updateCallTime,
    required TResult Function(int uid) userJoined,
    required TResult Function(int uid) userLeft,
  }) {
    return joinAudioCall();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? joinAudioCall,
    TResult? Function()? joinVideoCall,
    TResult? Function()? leaveCall,
    TResult? Function(bool isMicToggled)? muteMic,
    TResult? Function(bool isSpeakerOn)? toggleSpeaker,
    TResult? Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult? Function()? getMicStatus,
    TResult? Function()? dispose,
    TResult? Function()? switchCamera,
    TResult? Function(bool isVideoMuted)? muteVideo,
    TResult? Function(int calltime)? updateCallTime,
    TResult? Function(int uid)? userJoined,
    TResult? Function(int uid)? userLeft,
  }) {
    return joinAudioCall?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? joinAudioCall,
    TResult Function()? joinVideoCall,
    TResult Function()? leaveCall,
    TResult Function(bool isMicToggled)? muteMic,
    TResult Function(bool isSpeakerOn)? toggleSpeaker,
    TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult Function()? getMicStatus,
    TResult Function()? dispose,
    TResult Function()? switchCamera,
    TResult Function(bool isVideoMuted)? muteVideo,
    TResult Function(int calltime)? updateCallTime,
    TResult Function(int uid)? userJoined,
    TResult Function(int uid)? userLeft,
    required TResult orElse(),
  }) {
    if (joinAudioCall != null) {
      return joinAudioCall();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JoinAudioCallEvent value) joinAudioCall,
    required TResult Function(JoinVideoCallEvent value) joinVideoCall,
    required TResult Function(LeaveCallEvent value) leaveCall,
    required TResult Function(MuteMicEvent value) muteMic,
    required TResult Function(ToggleSpeakerEvent value) toggleSpeaker,
    required TResult Function(InititializeServiceEvent value) initializeService,
    required TResult Function(GetMicStatusEvent value) getMicStatus,
    required TResult Function(DisposeServiceEvent value) dispose,
    required TResult Function(SwitchCameraEvent value) switchCamera,
    required TResult Function(MuteVideoEvent value) muteVideo,
    required TResult Function(UpdateCallTimeEvent value) updateCallTime,
    required TResult Function(UserJoinedEvent value) userJoined,
    required TResult Function(UserLeftEvent value) userLeft,
  }) {
    return joinAudioCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult? Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult? Function(LeaveCallEvent value)? leaveCall,
    TResult? Function(MuteMicEvent value)? muteMic,
    TResult? Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult? Function(InititializeServiceEvent value)? initializeService,
    TResult? Function(GetMicStatusEvent value)? getMicStatus,
    TResult? Function(DisposeServiceEvent value)? dispose,
    TResult? Function(SwitchCameraEvent value)? switchCamera,
    TResult? Function(MuteVideoEvent value)? muteVideo,
    TResult? Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult? Function(UserJoinedEvent value)? userJoined,
    TResult? Function(UserLeftEvent value)? userLeft,
  }) {
    return joinAudioCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult Function(LeaveCallEvent value)? leaveCall,
    TResult Function(MuteMicEvent value)? muteMic,
    TResult Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult Function(InititializeServiceEvent value)? initializeService,
    TResult Function(GetMicStatusEvent value)? getMicStatus,
    TResult Function(DisposeServiceEvent value)? dispose,
    TResult Function(SwitchCameraEvent value)? switchCamera,
    TResult Function(MuteVideoEvent value)? muteVideo,
    TResult Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult Function(UserJoinedEvent value)? userJoined,
    TResult Function(UserLeftEvent value)? userLeft,
    required TResult orElse(),
  }) {
    if (joinAudioCall != null) {
      return joinAudioCall(this);
    }
    return orElse();
  }
}

abstract class JoinAudioCallEvent implements MediaChatEvent {
  const factory JoinAudioCallEvent() = _$JoinAudioCallEventImpl;
}

/// @nodoc
abstract class _$$JoinVideoCallEventImplCopyWith<$Res> {
  factory _$$JoinVideoCallEventImplCopyWith(_$JoinVideoCallEventImpl value,
          $Res Function(_$JoinVideoCallEventImpl) then) =
      __$$JoinVideoCallEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$JoinVideoCallEventImplCopyWithImpl<$Res>
    extends _$MediaChatEventCopyWithImpl<$Res, _$JoinVideoCallEventImpl>
    implements _$$JoinVideoCallEventImplCopyWith<$Res> {
  __$$JoinVideoCallEventImplCopyWithImpl(_$JoinVideoCallEventImpl _value,
      $Res Function(_$JoinVideoCallEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$JoinVideoCallEventImpl implements JoinVideoCallEvent {
  const _$JoinVideoCallEventImpl();

  @override
  String toString() {
    return 'MediaChatEvent.joinVideoCall()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$JoinVideoCallEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() joinAudioCall,
    required TResult Function() joinVideoCall,
    required TResult Function() leaveCall,
    required TResult Function(bool isMicToggled) muteMic,
    required TResult Function(bool isSpeakerOn) toggleSpeaker,
    required TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)
        initializeService,
    required TResult Function() getMicStatus,
    required TResult Function() dispose,
    required TResult Function() switchCamera,
    required TResult Function(bool isVideoMuted) muteVideo,
    required TResult Function(int calltime) updateCallTime,
    required TResult Function(int uid) userJoined,
    required TResult Function(int uid) userLeft,
  }) {
    return joinVideoCall();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? joinAudioCall,
    TResult? Function()? joinVideoCall,
    TResult? Function()? leaveCall,
    TResult? Function(bool isMicToggled)? muteMic,
    TResult? Function(bool isSpeakerOn)? toggleSpeaker,
    TResult? Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult? Function()? getMicStatus,
    TResult? Function()? dispose,
    TResult? Function()? switchCamera,
    TResult? Function(bool isVideoMuted)? muteVideo,
    TResult? Function(int calltime)? updateCallTime,
    TResult? Function(int uid)? userJoined,
    TResult? Function(int uid)? userLeft,
  }) {
    return joinVideoCall?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? joinAudioCall,
    TResult Function()? joinVideoCall,
    TResult Function()? leaveCall,
    TResult Function(bool isMicToggled)? muteMic,
    TResult Function(bool isSpeakerOn)? toggleSpeaker,
    TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult Function()? getMicStatus,
    TResult Function()? dispose,
    TResult Function()? switchCamera,
    TResult Function(bool isVideoMuted)? muteVideo,
    TResult Function(int calltime)? updateCallTime,
    TResult Function(int uid)? userJoined,
    TResult Function(int uid)? userLeft,
    required TResult orElse(),
  }) {
    if (joinVideoCall != null) {
      return joinVideoCall();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JoinAudioCallEvent value) joinAudioCall,
    required TResult Function(JoinVideoCallEvent value) joinVideoCall,
    required TResult Function(LeaveCallEvent value) leaveCall,
    required TResult Function(MuteMicEvent value) muteMic,
    required TResult Function(ToggleSpeakerEvent value) toggleSpeaker,
    required TResult Function(InititializeServiceEvent value) initializeService,
    required TResult Function(GetMicStatusEvent value) getMicStatus,
    required TResult Function(DisposeServiceEvent value) dispose,
    required TResult Function(SwitchCameraEvent value) switchCamera,
    required TResult Function(MuteVideoEvent value) muteVideo,
    required TResult Function(UpdateCallTimeEvent value) updateCallTime,
    required TResult Function(UserJoinedEvent value) userJoined,
    required TResult Function(UserLeftEvent value) userLeft,
  }) {
    return joinVideoCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult? Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult? Function(LeaveCallEvent value)? leaveCall,
    TResult? Function(MuteMicEvent value)? muteMic,
    TResult? Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult? Function(InititializeServiceEvent value)? initializeService,
    TResult? Function(GetMicStatusEvent value)? getMicStatus,
    TResult? Function(DisposeServiceEvent value)? dispose,
    TResult? Function(SwitchCameraEvent value)? switchCamera,
    TResult? Function(MuteVideoEvent value)? muteVideo,
    TResult? Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult? Function(UserJoinedEvent value)? userJoined,
    TResult? Function(UserLeftEvent value)? userLeft,
  }) {
    return joinVideoCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult Function(LeaveCallEvent value)? leaveCall,
    TResult Function(MuteMicEvent value)? muteMic,
    TResult Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult Function(InititializeServiceEvent value)? initializeService,
    TResult Function(GetMicStatusEvent value)? getMicStatus,
    TResult Function(DisposeServiceEvent value)? dispose,
    TResult Function(SwitchCameraEvent value)? switchCamera,
    TResult Function(MuteVideoEvent value)? muteVideo,
    TResult Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult Function(UserJoinedEvent value)? userJoined,
    TResult Function(UserLeftEvent value)? userLeft,
    required TResult orElse(),
  }) {
    if (joinVideoCall != null) {
      return joinVideoCall(this);
    }
    return orElse();
  }
}

abstract class JoinVideoCallEvent implements MediaChatEvent {
  const factory JoinVideoCallEvent() = _$JoinVideoCallEventImpl;
}

/// @nodoc
abstract class _$$LeaveCallEventImplCopyWith<$Res> {
  factory _$$LeaveCallEventImplCopyWith(_$LeaveCallEventImpl value,
          $Res Function(_$LeaveCallEventImpl) then) =
      __$$LeaveCallEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LeaveCallEventImplCopyWithImpl<$Res>
    extends _$MediaChatEventCopyWithImpl<$Res, _$LeaveCallEventImpl>
    implements _$$LeaveCallEventImplCopyWith<$Res> {
  __$$LeaveCallEventImplCopyWithImpl(
      _$LeaveCallEventImpl _value, $Res Function(_$LeaveCallEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LeaveCallEventImpl implements LeaveCallEvent {
  const _$LeaveCallEventImpl();

  @override
  String toString() {
    return 'MediaChatEvent.leaveCall()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LeaveCallEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() joinAudioCall,
    required TResult Function() joinVideoCall,
    required TResult Function() leaveCall,
    required TResult Function(bool isMicToggled) muteMic,
    required TResult Function(bool isSpeakerOn) toggleSpeaker,
    required TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)
        initializeService,
    required TResult Function() getMicStatus,
    required TResult Function() dispose,
    required TResult Function() switchCamera,
    required TResult Function(bool isVideoMuted) muteVideo,
    required TResult Function(int calltime) updateCallTime,
    required TResult Function(int uid) userJoined,
    required TResult Function(int uid) userLeft,
  }) {
    return leaveCall();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? joinAudioCall,
    TResult? Function()? joinVideoCall,
    TResult? Function()? leaveCall,
    TResult? Function(bool isMicToggled)? muteMic,
    TResult? Function(bool isSpeakerOn)? toggleSpeaker,
    TResult? Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult? Function()? getMicStatus,
    TResult? Function()? dispose,
    TResult? Function()? switchCamera,
    TResult? Function(bool isVideoMuted)? muteVideo,
    TResult? Function(int calltime)? updateCallTime,
    TResult? Function(int uid)? userJoined,
    TResult? Function(int uid)? userLeft,
  }) {
    return leaveCall?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? joinAudioCall,
    TResult Function()? joinVideoCall,
    TResult Function()? leaveCall,
    TResult Function(bool isMicToggled)? muteMic,
    TResult Function(bool isSpeakerOn)? toggleSpeaker,
    TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult Function()? getMicStatus,
    TResult Function()? dispose,
    TResult Function()? switchCamera,
    TResult Function(bool isVideoMuted)? muteVideo,
    TResult Function(int calltime)? updateCallTime,
    TResult Function(int uid)? userJoined,
    TResult Function(int uid)? userLeft,
    required TResult orElse(),
  }) {
    if (leaveCall != null) {
      return leaveCall();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JoinAudioCallEvent value) joinAudioCall,
    required TResult Function(JoinVideoCallEvent value) joinVideoCall,
    required TResult Function(LeaveCallEvent value) leaveCall,
    required TResult Function(MuteMicEvent value) muteMic,
    required TResult Function(ToggleSpeakerEvent value) toggleSpeaker,
    required TResult Function(InititializeServiceEvent value) initializeService,
    required TResult Function(GetMicStatusEvent value) getMicStatus,
    required TResult Function(DisposeServiceEvent value) dispose,
    required TResult Function(SwitchCameraEvent value) switchCamera,
    required TResult Function(MuteVideoEvent value) muteVideo,
    required TResult Function(UpdateCallTimeEvent value) updateCallTime,
    required TResult Function(UserJoinedEvent value) userJoined,
    required TResult Function(UserLeftEvent value) userLeft,
  }) {
    return leaveCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult? Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult? Function(LeaveCallEvent value)? leaveCall,
    TResult? Function(MuteMicEvent value)? muteMic,
    TResult? Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult? Function(InititializeServiceEvent value)? initializeService,
    TResult? Function(GetMicStatusEvent value)? getMicStatus,
    TResult? Function(DisposeServiceEvent value)? dispose,
    TResult? Function(SwitchCameraEvent value)? switchCamera,
    TResult? Function(MuteVideoEvent value)? muteVideo,
    TResult? Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult? Function(UserJoinedEvent value)? userJoined,
    TResult? Function(UserLeftEvent value)? userLeft,
  }) {
    return leaveCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult Function(LeaveCallEvent value)? leaveCall,
    TResult Function(MuteMicEvent value)? muteMic,
    TResult Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult Function(InititializeServiceEvent value)? initializeService,
    TResult Function(GetMicStatusEvent value)? getMicStatus,
    TResult Function(DisposeServiceEvent value)? dispose,
    TResult Function(SwitchCameraEvent value)? switchCamera,
    TResult Function(MuteVideoEvent value)? muteVideo,
    TResult Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult Function(UserJoinedEvent value)? userJoined,
    TResult Function(UserLeftEvent value)? userLeft,
    required TResult orElse(),
  }) {
    if (leaveCall != null) {
      return leaveCall(this);
    }
    return orElse();
  }
}

abstract class LeaveCallEvent implements MediaChatEvent {
  const factory LeaveCallEvent() = _$LeaveCallEventImpl;
}

/// @nodoc
abstract class _$$MuteMicEventImplCopyWith<$Res> {
  factory _$$MuteMicEventImplCopyWith(
          _$MuteMicEventImpl value, $Res Function(_$MuteMicEventImpl) then) =
      __$$MuteMicEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isMicToggled});
}

/// @nodoc
class __$$MuteMicEventImplCopyWithImpl<$Res>
    extends _$MediaChatEventCopyWithImpl<$Res, _$MuteMicEventImpl>
    implements _$$MuteMicEventImplCopyWith<$Res> {
  __$$MuteMicEventImplCopyWithImpl(
      _$MuteMicEventImpl _value, $Res Function(_$MuteMicEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMicToggled = null,
  }) {
    return _then(_$MuteMicEventImpl(
      isMicToggled: null == isMicToggled
          ? _value.isMicToggled
          : isMicToggled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MuteMicEventImpl implements MuteMicEvent {
  const _$MuteMicEventImpl({required this.isMicToggled});

  @override
  final bool isMicToggled;

  @override
  String toString() {
    return 'MediaChatEvent.muteMic(isMicToggled: $isMicToggled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MuteMicEventImpl &&
            (identical(other.isMicToggled, isMicToggled) ||
                other.isMicToggled == isMicToggled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMicToggled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MuteMicEventImplCopyWith<_$MuteMicEventImpl> get copyWith =>
      __$$MuteMicEventImplCopyWithImpl<_$MuteMicEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() joinAudioCall,
    required TResult Function() joinVideoCall,
    required TResult Function() leaveCall,
    required TResult Function(bool isMicToggled) muteMic,
    required TResult Function(bool isSpeakerOn) toggleSpeaker,
    required TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)
        initializeService,
    required TResult Function() getMicStatus,
    required TResult Function() dispose,
    required TResult Function() switchCamera,
    required TResult Function(bool isVideoMuted) muteVideo,
    required TResult Function(int calltime) updateCallTime,
    required TResult Function(int uid) userJoined,
    required TResult Function(int uid) userLeft,
  }) {
    return muteMic(isMicToggled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? joinAudioCall,
    TResult? Function()? joinVideoCall,
    TResult? Function()? leaveCall,
    TResult? Function(bool isMicToggled)? muteMic,
    TResult? Function(bool isSpeakerOn)? toggleSpeaker,
    TResult? Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult? Function()? getMicStatus,
    TResult? Function()? dispose,
    TResult? Function()? switchCamera,
    TResult? Function(bool isVideoMuted)? muteVideo,
    TResult? Function(int calltime)? updateCallTime,
    TResult? Function(int uid)? userJoined,
    TResult? Function(int uid)? userLeft,
  }) {
    return muteMic?.call(isMicToggled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? joinAudioCall,
    TResult Function()? joinVideoCall,
    TResult Function()? leaveCall,
    TResult Function(bool isMicToggled)? muteMic,
    TResult Function(bool isSpeakerOn)? toggleSpeaker,
    TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult Function()? getMicStatus,
    TResult Function()? dispose,
    TResult Function()? switchCamera,
    TResult Function(bool isVideoMuted)? muteVideo,
    TResult Function(int calltime)? updateCallTime,
    TResult Function(int uid)? userJoined,
    TResult Function(int uid)? userLeft,
    required TResult orElse(),
  }) {
    if (muteMic != null) {
      return muteMic(isMicToggled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JoinAudioCallEvent value) joinAudioCall,
    required TResult Function(JoinVideoCallEvent value) joinVideoCall,
    required TResult Function(LeaveCallEvent value) leaveCall,
    required TResult Function(MuteMicEvent value) muteMic,
    required TResult Function(ToggleSpeakerEvent value) toggleSpeaker,
    required TResult Function(InititializeServiceEvent value) initializeService,
    required TResult Function(GetMicStatusEvent value) getMicStatus,
    required TResult Function(DisposeServiceEvent value) dispose,
    required TResult Function(SwitchCameraEvent value) switchCamera,
    required TResult Function(MuteVideoEvent value) muteVideo,
    required TResult Function(UpdateCallTimeEvent value) updateCallTime,
    required TResult Function(UserJoinedEvent value) userJoined,
    required TResult Function(UserLeftEvent value) userLeft,
  }) {
    return muteMic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult? Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult? Function(LeaveCallEvent value)? leaveCall,
    TResult? Function(MuteMicEvent value)? muteMic,
    TResult? Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult? Function(InititializeServiceEvent value)? initializeService,
    TResult? Function(GetMicStatusEvent value)? getMicStatus,
    TResult? Function(DisposeServiceEvent value)? dispose,
    TResult? Function(SwitchCameraEvent value)? switchCamera,
    TResult? Function(MuteVideoEvent value)? muteVideo,
    TResult? Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult? Function(UserJoinedEvent value)? userJoined,
    TResult? Function(UserLeftEvent value)? userLeft,
  }) {
    return muteMic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult Function(LeaveCallEvent value)? leaveCall,
    TResult Function(MuteMicEvent value)? muteMic,
    TResult Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult Function(InititializeServiceEvent value)? initializeService,
    TResult Function(GetMicStatusEvent value)? getMicStatus,
    TResult Function(DisposeServiceEvent value)? dispose,
    TResult Function(SwitchCameraEvent value)? switchCamera,
    TResult Function(MuteVideoEvent value)? muteVideo,
    TResult Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult Function(UserJoinedEvent value)? userJoined,
    TResult Function(UserLeftEvent value)? userLeft,
    required TResult orElse(),
  }) {
    if (muteMic != null) {
      return muteMic(this);
    }
    return orElse();
  }
}

abstract class MuteMicEvent implements MediaChatEvent {
  const factory MuteMicEvent({required final bool isMicToggled}) =
      _$MuteMicEventImpl;

  bool get isMicToggled;
  @JsonKey(ignore: true)
  _$$MuteMicEventImplCopyWith<_$MuteMicEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleSpeakerEventImplCopyWith<$Res> {
  factory _$$ToggleSpeakerEventImplCopyWith(_$ToggleSpeakerEventImpl value,
          $Res Function(_$ToggleSpeakerEventImpl) then) =
      __$$ToggleSpeakerEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSpeakerOn});
}

/// @nodoc
class __$$ToggleSpeakerEventImplCopyWithImpl<$Res>
    extends _$MediaChatEventCopyWithImpl<$Res, _$ToggleSpeakerEventImpl>
    implements _$$ToggleSpeakerEventImplCopyWith<$Res> {
  __$$ToggleSpeakerEventImplCopyWithImpl(_$ToggleSpeakerEventImpl _value,
      $Res Function(_$ToggleSpeakerEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSpeakerOn = null,
  }) {
    return _then(_$ToggleSpeakerEventImpl(
      isSpeakerOn: null == isSpeakerOn
          ? _value.isSpeakerOn
          : isSpeakerOn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToggleSpeakerEventImpl implements ToggleSpeakerEvent {
  const _$ToggleSpeakerEventImpl({required this.isSpeakerOn});

  @override
  final bool isSpeakerOn;

  @override
  String toString() {
    return 'MediaChatEvent.toggleSpeaker(isSpeakerOn: $isSpeakerOn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleSpeakerEventImpl &&
            (identical(other.isSpeakerOn, isSpeakerOn) ||
                other.isSpeakerOn == isSpeakerOn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSpeakerOn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleSpeakerEventImplCopyWith<_$ToggleSpeakerEventImpl> get copyWith =>
      __$$ToggleSpeakerEventImplCopyWithImpl<_$ToggleSpeakerEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() joinAudioCall,
    required TResult Function() joinVideoCall,
    required TResult Function() leaveCall,
    required TResult Function(bool isMicToggled) muteMic,
    required TResult Function(bool isSpeakerOn) toggleSpeaker,
    required TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)
        initializeService,
    required TResult Function() getMicStatus,
    required TResult Function() dispose,
    required TResult Function() switchCamera,
    required TResult Function(bool isVideoMuted) muteVideo,
    required TResult Function(int calltime) updateCallTime,
    required TResult Function(int uid) userJoined,
    required TResult Function(int uid) userLeft,
  }) {
    return toggleSpeaker(isSpeakerOn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? joinAudioCall,
    TResult? Function()? joinVideoCall,
    TResult? Function()? leaveCall,
    TResult? Function(bool isMicToggled)? muteMic,
    TResult? Function(bool isSpeakerOn)? toggleSpeaker,
    TResult? Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult? Function()? getMicStatus,
    TResult? Function()? dispose,
    TResult? Function()? switchCamera,
    TResult? Function(bool isVideoMuted)? muteVideo,
    TResult? Function(int calltime)? updateCallTime,
    TResult? Function(int uid)? userJoined,
    TResult? Function(int uid)? userLeft,
  }) {
    return toggleSpeaker?.call(isSpeakerOn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? joinAudioCall,
    TResult Function()? joinVideoCall,
    TResult Function()? leaveCall,
    TResult Function(bool isMicToggled)? muteMic,
    TResult Function(bool isSpeakerOn)? toggleSpeaker,
    TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult Function()? getMicStatus,
    TResult Function()? dispose,
    TResult Function()? switchCamera,
    TResult Function(bool isVideoMuted)? muteVideo,
    TResult Function(int calltime)? updateCallTime,
    TResult Function(int uid)? userJoined,
    TResult Function(int uid)? userLeft,
    required TResult orElse(),
  }) {
    if (toggleSpeaker != null) {
      return toggleSpeaker(isSpeakerOn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JoinAudioCallEvent value) joinAudioCall,
    required TResult Function(JoinVideoCallEvent value) joinVideoCall,
    required TResult Function(LeaveCallEvent value) leaveCall,
    required TResult Function(MuteMicEvent value) muteMic,
    required TResult Function(ToggleSpeakerEvent value) toggleSpeaker,
    required TResult Function(InititializeServiceEvent value) initializeService,
    required TResult Function(GetMicStatusEvent value) getMicStatus,
    required TResult Function(DisposeServiceEvent value) dispose,
    required TResult Function(SwitchCameraEvent value) switchCamera,
    required TResult Function(MuteVideoEvent value) muteVideo,
    required TResult Function(UpdateCallTimeEvent value) updateCallTime,
    required TResult Function(UserJoinedEvent value) userJoined,
    required TResult Function(UserLeftEvent value) userLeft,
  }) {
    return toggleSpeaker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult? Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult? Function(LeaveCallEvent value)? leaveCall,
    TResult? Function(MuteMicEvent value)? muteMic,
    TResult? Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult? Function(InititializeServiceEvent value)? initializeService,
    TResult? Function(GetMicStatusEvent value)? getMicStatus,
    TResult? Function(DisposeServiceEvent value)? dispose,
    TResult? Function(SwitchCameraEvent value)? switchCamera,
    TResult? Function(MuteVideoEvent value)? muteVideo,
    TResult? Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult? Function(UserJoinedEvent value)? userJoined,
    TResult? Function(UserLeftEvent value)? userLeft,
  }) {
    return toggleSpeaker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult Function(LeaveCallEvent value)? leaveCall,
    TResult Function(MuteMicEvent value)? muteMic,
    TResult Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult Function(InititializeServiceEvent value)? initializeService,
    TResult Function(GetMicStatusEvent value)? getMicStatus,
    TResult Function(DisposeServiceEvent value)? dispose,
    TResult Function(SwitchCameraEvent value)? switchCamera,
    TResult Function(MuteVideoEvent value)? muteVideo,
    TResult Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult Function(UserJoinedEvent value)? userJoined,
    TResult Function(UserLeftEvent value)? userLeft,
    required TResult orElse(),
  }) {
    if (toggleSpeaker != null) {
      return toggleSpeaker(this);
    }
    return orElse();
  }
}

abstract class ToggleSpeakerEvent implements MediaChatEvent {
  const factory ToggleSpeakerEvent({required final bool isSpeakerOn}) =
      _$ToggleSpeakerEventImpl;

  bool get isSpeakerOn;
  @JsonKey(ignore: true)
  _$$ToggleSpeakerEventImplCopyWith<_$ToggleSpeakerEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InititializeServiceEventImplCopyWith<$Res> {
  factory _$$InititializeServiceEventImplCopyWith(
          _$InititializeServiceEventImpl value,
          $Res Function(_$InititializeServiceEventImpl) then) =
      __$$InititializeServiceEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {void Function(dynamic, String) onError,
      void Function(dynamic, int, int) onUserJoined,
      void Function(dynamic, int, dynamic) onUserOffline,
      void Function(dynamic, dynamic) onRtcStats,
      void Function(dynamic, int) onJoinChannelSuccess,
      void Function(dynamic, dynamic) onLeaveChannel});
}

/// @nodoc
class __$$InititializeServiceEventImplCopyWithImpl<$Res>
    extends _$MediaChatEventCopyWithImpl<$Res, _$InititializeServiceEventImpl>
    implements _$$InititializeServiceEventImplCopyWith<$Res> {
  __$$InititializeServiceEventImplCopyWithImpl(
      _$InititializeServiceEventImpl _value,
      $Res Function(_$InititializeServiceEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onError = null,
    Object? onUserJoined = null,
    Object? onUserOffline = null,
    Object? onRtcStats = null,
    Object? onJoinChannelSuccess = null,
    Object? onLeaveChannel = null,
  }) {
    return _then(_$InititializeServiceEventImpl(
      onError: null == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as void Function(dynamic, String),
      onUserJoined: null == onUserJoined
          ? _value.onUserJoined
          : onUserJoined // ignore: cast_nullable_to_non_nullable
              as void Function(dynamic, int, int),
      onUserOffline: null == onUserOffline
          ? _value.onUserOffline
          : onUserOffline // ignore: cast_nullable_to_non_nullable
              as void Function(dynamic, int, dynamic),
      onRtcStats: null == onRtcStats
          ? _value.onRtcStats
          : onRtcStats // ignore: cast_nullable_to_non_nullable
              as void Function(dynamic, dynamic),
      onJoinChannelSuccess: null == onJoinChannelSuccess
          ? _value.onJoinChannelSuccess
          : onJoinChannelSuccess // ignore: cast_nullable_to_non_nullable
              as void Function(dynamic, int),
      onLeaveChannel: null == onLeaveChannel
          ? _value.onLeaveChannel
          : onLeaveChannel // ignore: cast_nullable_to_non_nullable
              as void Function(dynamic, dynamic),
    ));
  }
}

/// @nodoc

class _$InititializeServiceEventImpl implements InititializeServiceEvent {
  const _$InititializeServiceEventImpl(
      {required this.onError,
      required this.onUserJoined,
      required this.onUserOffline,
      required this.onRtcStats,
      required this.onJoinChannelSuccess,
      required this.onLeaveChannel});

  @override
  final void Function(dynamic, String) onError;
  @override
  final void Function(dynamic, int, int) onUserJoined;
  @override
  final void Function(dynamic, int, dynamic) onUserOffline;
  @override
  final void Function(dynamic, dynamic) onRtcStats;
  @override
  final void Function(dynamic, int) onJoinChannelSuccess;
  @override
  final void Function(dynamic, dynamic) onLeaveChannel;

  @override
  String toString() {
    return 'MediaChatEvent.initializeService(onError: $onError, onUserJoined: $onUserJoined, onUserOffline: $onUserOffline, onRtcStats: $onRtcStats, onJoinChannelSuccess: $onJoinChannelSuccess, onLeaveChannel: $onLeaveChannel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InititializeServiceEventImpl &&
            (identical(other.onError, onError) || other.onError == onError) &&
            (identical(other.onUserJoined, onUserJoined) ||
                other.onUserJoined == onUserJoined) &&
            (identical(other.onUserOffline, onUserOffline) ||
                other.onUserOffline == onUserOffline) &&
            (identical(other.onRtcStats, onRtcStats) ||
                other.onRtcStats == onRtcStats) &&
            (identical(other.onJoinChannelSuccess, onJoinChannelSuccess) ||
                other.onJoinChannelSuccess == onJoinChannelSuccess) &&
            (identical(other.onLeaveChannel, onLeaveChannel) ||
                other.onLeaveChannel == onLeaveChannel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onError, onUserJoined,
      onUserOffline, onRtcStats, onJoinChannelSuccess, onLeaveChannel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InititializeServiceEventImplCopyWith<_$InititializeServiceEventImpl>
      get copyWith => __$$InititializeServiceEventImplCopyWithImpl<
          _$InititializeServiceEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() joinAudioCall,
    required TResult Function() joinVideoCall,
    required TResult Function() leaveCall,
    required TResult Function(bool isMicToggled) muteMic,
    required TResult Function(bool isSpeakerOn) toggleSpeaker,
    required TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)
        initializeService,
    required TResult Function() getMicStatus,
    required TResult Function() dispose,
    required TResult Function() switchCamera,
    required TResult Function(bool isVideoMuted) muteVideo,
    required TResult Function(int calltime) updateCallTime,
    required TResult Function(int uid) userJoined,
    required TResult Function(int uid) userLeft,
  }) {
    return initializeService(onError, onUserJoined, onUserOffline, onRtcStats,
        onJoinChannelSuccess, onLeaveChannel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? joinAudioCall,
    TResult? Function()? joinVideoCall,
    TResult? Function()? leaveCall,
    TResult? Function(bool isMicToggled)? muteMic,
    TResult? Function(bool isSpeakerOn)? toggleSpeaker,
    TResult? Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult? Function()? getMicStatus,
    TResult? Function()? dispose,
    TResult? Function()? switchCamera,
    TResult? Function(bool isVideoMuted)? muteVideo,
    TResult? Function(int calltime)? updateCallTime,
    TResult? Function(int uid)? userJoined,
    TResult? Function(int uid)? userLeft,
  }) {
    return initializeService?.call(onError, onUserJoined, onUserOffline,
        onRtcStats, onJoinChannelSuccess, onLeaveChannel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? joinAudioCall,
    TResult Function()? joinVideoCall,
    TResult Function()? leaveCall,
    TResult Function(bool isMicToggled)? muteMic,
    TResult Function(bool isSpeakerOn)? toggleSpeaker,
    TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult Function()? getMicStatus,
    TResult Function()? dispose,
    TResult Function()? switchCamera,
    TResult Function(bool isVideoMuted)? muteVideo,
    TResult Function(int calltime)? updateCallTime,
    TResult Function(int uid)? userJoined,
    TResult Function(int uid)? userLeft,
    required TResult orElse(),
  }) {
    if (initializeService != null) {
      return initializeService(onError, onUserJoined, onUserOffline, onRtcStats,
          onJoinChannelSuccess, onLeaveChannel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JoinAudioCallEvent value) joinAudioCall,
    required TResult Function(JoinVideoCallEvent value) joinVideoCall,
    required TResult Function(LeaveCallEvent value) leaveCall,
    required TResult Function(MuteMicEvent value) muteMic,
    required TResult Function(ToggleSpeakerEvent value) toggleSpeaker,
    required TResult Function(InititializeServiceEvent value) initializeService,
    required TResult Function(GetMicStatusEvent value) getMicStatus,
    required TResult Function(DisposeServiceEvent value) dispose,
    required TResult Function(SwitchCameraEvent value) switchCamera,
    required TResult Function(MuteVideoEvent value) muteVideo,
    required TResult Function(UpdateCallTimeEvent value) updateCallTime,
    required TResult Function(UserJoinedEvent value) userJoined,
    required TResult Function(UserLeftEvent value) userLeft,
  }) {
    return initializeService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult? Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult? Function(LeaveCallEvent value)? leaveCall,
    TResult? Function(MuteMicEvent value)? muteMic,
    TResult? Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult? Function(InititializeServiceEvent value)? initializeService,
    TResult? Function(GetMicStatusEvent value)? getMicStatus,
    TResult? Function(DisposeServiceEvent value)? dispose,
    TResult? Function(SwitchCameraEvent value)? switchCamera,
    TResult? Function(MuteVideoEvent value)? muteVideo,
    TResult? Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult? Function(UserJoinedEvent value)? userJoined,
    TResult? Function(UserLeftEvent value)? userLeft,
  }) {
    return initializeService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult Function(LeaveCallEvent value)? leaveCall,
    TResult Function(MuteMicEvent value)? muteMic,
    TResult Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult Function(InititializeServiceEvent value)? initializeService,
    TResult Function(GetMicStatusEvent value)? getMicStatus,
    TResult Function(DisposeServiceEvent value)? dispose,
    TResult Function(SwitchCameraEvent value)? switchCamera,
    TResult Function(MuteVideoEvent value)? muteVideo,
    TResult Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult Function(UserJoinedEvent value)? userJoined,
    TResult Function(UserLeftEvent value)? userLeft,
    required TResult orElse(),
  }) {
    if (initializeService != null) {
      return initializeService(this);
    }
    return orElse();
  }
}

abstract class InititializeServiceEvent implements MediaChatEvent {
  const factory InititializeServiceEvent(
          {required final void Function(dynamic, String) onError,
          required final void Function(dynamic, int, int) onUserJoined,
          required final void Function(dynamic, int, dynamic) onUserOffline,
          required final void Function(dynamic, dynamic) onRtcStats,
          required final void Function(dynamic, int) onJoinChannelSuccess,
          required final void Function(dynamic, dynamic) onLeaveChannel}) =
      _$InititializeServiceEventImpl;

  void Function(dynamic, String) get onError;
  void Function(dynamic, int, int) get onUserJoined;
  void Function(dynamic, int, dynamic) get onUserOffline;
  void Function(dynamic, dynamic) get onRtcStats;
  void Function(dynamic, int) get onJoinChannelSuccess;
  void Function(dynamic, dynamic) get onLeaveChannel;
  @JsonKey(ignore: true)
  _$$InititializeServiceEventImplCopyWith<_$InititializeServiceEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMicStatusEventImplCopyWith<$Res> {
  factory _$$GetMicStatusEventImplCopyWith(_$GetMicStatusEventImpl value,
          $Res Function(_$GetMicStatusEventImpl) then) =
      __$$GetMicStatusEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMicStatusEventImplCopyWithImpl<$Res>
    extends _$MediaChatEventCopyWithImpl<$Res, _$GetMicStatusEventImpl>
    implements _$$GetMicStatusEventImplCopyWith<$Res> {
  __$$GetMicStatusEventImplCopyWithImpl(_$GetMicStatusEventImpl _value,
      $Res Function(_$GetMicStatusEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMicStatusEventImpl implements GetMicStatusEvent {
  const _$GetMicStatusEventImpl();

  @override
  String toString() {
    return 'MediaChatEvent.getMicStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMicStatusEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() joinAudioCall,
    required TResult Function() joinVideoCall,
    required TResult Function() leaveCall,
    required TResult Function(bool isMicToggled) muteMic,
    required TResult Function(bool isSpeakerOn) toggleSpeaker,
    required TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)
        initializeService,
    required TResult Function() getMicStatus,
    required TResult Function() dispose,
    required TResult Function() switchCamera,
    required TResult Function(bool isVideoMuted) muteVideo,
    required TResult Function(int calltime) updateCallTime,
    required TResult Function(int uid) userJoined,
    required TResult Function(int uid) userLeft,
  }) {
    return getMicStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? joinAudioCall,
    TResult? Function()? joinVideoCall,
    TResult? Function()? leaveCall,
    TResult? Function(bool isMicToggled)? muteMic,
    TResult? Function(bool isSpeakerOn)? toggleSpeaker,
    TResult? Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult? Function()? getMicStatus,
    TResult? Function()? dispose,
    TResult? Function()? switchCamera,
    TResult? Function(bool isVideoMuted)? muteVideo,
    TResult? Function(int calltime)? updateCallTime,
    TResult? Function(int uid)? userJoined,
    TResult? Function(int uid)? userLeft,
  }) {
    return getMicStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? joinAudioCall,
    TResult Function()? joinVideoCall,
    TResult Function()? leaveCall,
    TResult Function(bool isMicToggled)? muteMic,
    TResult Function(bool isSpeakerOn)? toggleSpeaker,
    TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult Function()? getMicStatus,
    TResult Function()? dispose,
    TResult Function()? switchCamera,
    TResult Function(bool isVideoMuted)? muteVideo,
    TResult Function(int calltime)? updateCallTime,
    TResult Function(int uid)? userJoined,
    TResult Function(int uid)? userLeft,
    required TResult orElse(),
  }) {
    if (getMicStatus != null) {
      return getMicStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JoinAudioCallEvent value) joinAudioCall,
    required TResult Function(JoinVideoCallEvent value) joinVideoCall,
    required TResult Function(LeaveCallEvent value) leaveCall,
    required TResult Function(MuteMicEvent value) muteMic,
    required TResult Function(ToggleSpeakerEvent value) toggleSpeaker,
    required TResult Function(InititializeServiceEvent value) initializeService,
    required TResult Function(GetMicStatusEvent value) getMicStatus,
    required TResult Function(DisposeServiceEvent value) dispose,
    required TResult Function(SwitchCameraEvent value) switchCamera,
    required TResult Function(MuteVideoEvent value) muteVideo,
    required TResult Function(UpdateCallTimeEvent value) updateCallTime,
    required TResult Function(UserJoinedEvent value) userJoined,
    required TResult Function(UserLeftEvent value) userLeft,
  }) {
    return getMicStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult? Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult? Function(LeaveCallEvent value)? leaveCall,
    TResult? Function(MuteMicEvent value)? muteMic,
    TResult? Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult? Function(InititializeServiceEvent value)? initializeService,
    TResult? Function(GetMicStatusEvent value)? getMicStatus,
    TResult? Function(DisposeServiceEvent value)? dispose,
    TResult? Function(SwitchCameraEvent value)? switchCamera,
    TResult? Function(MuteVideoEvent value)? muteVideo,
    TResult? Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult? Function(UserJoinedEvent value)? userJoined,
    TResult? Function(UserLeftEvent value)? userLeft,
  }) {
    return getMicStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult Function(LeaveCallEvent value)? leaveCall,
    TResult Function(MuteMicEvent value)? muteMic,
    TResult Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult Function(InititializeServiceEvent value)? initializeService,
    TResult Function(GetMicStatusEvent value)? getMicStatus,
    TResult Function(DisposeServiceEvent value)? dispose,
    TResult Function(SwitchCameraEvent value)? switchCamera,
    TResult Function(MuteVideoEvent value)? muteVideo,
    TResult Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult Function(UserJoinedEvent value)? userJoined,
    TResult Function(UserLeftEvent value)? userLeft,
    required TResult orElse(),
  }) {
    if (getMicStatus != null) {
      return getMicStatus(this);
    }
    return orElse();
  }
}

abstract class GetMicStatusEvent implements MediaChatEvent {
  const factory GetMicStatusEvent() = _$GetMicStatusEventImpl;
}

/// @nodoc
abstract class _$$DisposeServiceEventImplCopyWith<$Res> {
  factory _$$DisposeServiceEventImplCopyWith(_$DisposeServiceEventImpl value,
          $Res Function(_$DisposeServiceEventImpl) then) =
      __$$DisposeServiceEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisposeServiceEventImplCopyWithImpl<$Res>
    extends _$MediaChatEventCopyWithImpl<$Res, _$DisposeServiceEventImpl>
    implements _$$DisposeServiceEventImplCopyWith<$Res> {
  __$$DisposeServiceEventImplCopyWithImpl(_$DisposeServiceEventImpl _value,
      $Res Function(_$DisposeServiceEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisposeServiceEventImpl implements DisposeServiceEvent {
  const _$DisposeServiceEventImpl();

  @override
  String toString() {
    return 'MediaChatEvent.dispose()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisposeServiceEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() joinAudioCall,
    required TResult Function() joinVideoCall,
    required TResult Function() leaveCall,
    required TResult Function(bool isMicToggled) muteMic,
    required TResult Function(bool isSpeakerOn) toggleSpeaker,
    required TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)
        initializeService,
    required TResult Function() getMicStatus,
    required TResult Function() dispose,
    required TResult Function() switchCamera,
    required TResult Function(bool isVideoMuted) muteVideo,
    required TResult Function(int calltime) updateCallTime,
    required TResult Function(int uid) userJoined,
    required TResult Function(int uid) userLeft,
  }) {
    return dispose();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? joinAudioCall,
    TResult? Function()? joinVideoCall,
    TResult? Function()? leaveCall,
    TResult? Function(bool isMicToggled)? muteMic,
    TResult? Function(bool isSpeakerOn)? toggleSpeaker,
    TResult? Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult? Function()? getMicStatus,
    TResult? Function()? dispose,
    TResult? Function()? switchCamera,
    TResult? Function(bool isVideoMuted)? muteVideo,
    TResult? Function(int calltime)? updateCallTime,
    TResult? Function(int uid)? userJoined,
    TResult? Function(int uid)? userLeft,
  }) {
    return dispose?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? joinAudioCall,
    TResult Function()? joinVideoCall,
    TResult Function()? leaveCall,
    TResult Function(bool isMicToggled)? muteMic,
    TResult Function(bool isSpeakerOn)? toggleSpeaker,
    TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult Function()? getMicStatus,
    TResult Function()? dispose,
    TResult Function()? switchCamera,
    TResult Function(bool isVideoMuted)? muteVideo,
    TResult Function(int calltime)? updateCallTime,
    TResult Function(int uid)? userJoined,
    TResult Function(int uid)? userLeft,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JoinAudioCallEvent value) joinAudioCall,
    required TResult Function(JoinVideoCallEvent value) joinVideoCall,
    required TResult Function(LeaveCallEvent value) leaveCall,
    required TResult Function(MuteMicEvent value) muteMic,
    required TResult Function(ToggleSpeakerEvent value) toggleSpeaker,
    required TResult Function(InititializeServiceEvent value) initializeService,
    required TResult Function(GetMicStatusEvent value) getMicStatus,
    required TResult Function(DisposeServiceEvent value) dispose,
    required TResult Function(SwitchCameraEvent value) switchCamera,
    required TResult Function(MuteVideoEvent value) muteVideo,
    required TResult Function(UpdateCallTimeEvent value) updateCallTime,
    required TResult Function(UserJoinedEvent value) userJoined,
    required TResult Function(UserLeftEvent value) userLeft,
  }) {
    return dispose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult? Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult? Function(LeaveCallEvent value)? leaveCall,
    TResult? Function(MuteMicEvent value)? muteMic,
    TResult? Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult? Function(InititializeServiceEvent value)? initializeService,
    TResult? Function(GetMicStatusEvent value)? getMicStatus,
    TResult? Function(DisposeServiceEvent value)? dispose,
    TResult? Function(SwitchCameraEvent value)? switchCamera,
    TResult? Function(MuteVideoEvent value)? muteVideo,
    TResult? Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult? Function(UserJoinedEvent value)? userJoined,
    TResult? Function(UserLeftEvent value)? userLeft,
  }) {
    return dispose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult Function(LeaveCallEvent value)? leaveCall,
    TResult Function(MuteMicEvent value)? muteMic,
    TResult Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult Function(InititializeServiceEvent value)? initializeService,
    TResult Function(GetMicStatusEvent value)? getMicStatus,
    TResult Function(DisposeServiceEvent value)? dispose,
    TResult Function(SwitchCameraEvent value)? switchCamera,
    TResult Function(MuteVideoEvent value)? muteVideo,
    TResult Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult Function(UserJoinedEvent value)? userJoined,
    TResult Function(UserLeftEvent value)? userLeft,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose(this);
    }
    return orElse();
  }
}

abstract class DisposeServiceEvent implements MediaChatEvent {
  const factory DisposeServiceEvent() = _$DisposeServiceEventImpl;
}

/// @nodoc
abstract class _$$SwitchCameraEventImplCopyWith<$Res> {
  factory _$$SwitchCameraEventImplCopyWith(_$SwitchCameraEventImpl value,
          $Res Function(_$SwitchCameraEventImpl) then) =
      __$$SwitchCameraEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SwitchCameraEventImplCopyWithImpl<$Res>
    extends _$MediaChatEventCopyWithImpl<$Res, _$SwitchCameraEventImpl>
    implements _$$SwitchCameraEventImplCopyWith<$Res> {
  __$$SwitchCameraEventImplCopyWithImpl(_$SwitchCameraEventImpl _value,
      $Res Function(_$SwitchCameraEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SwitchCameraEventImpl implements SwitchCameraEvent {
  const _$SwitchCameraEventImpl();

  @override
  String toString() {
    return 'MediaChatEvent.switchCamera()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SwitchCameraEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() joinAudioCall,
    required TResult Function() joinVideoCall,
    required TResult Function() leaveCall,
    required TResult Function(bool isMicToggled) muteMic,
    required TResult Function(bool isSpeakerOn) toggleSpeaker,
    required TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)
        initializeService,
    required TResult Function() getMicStatus,
    required TResult Function() dispose,
    required TResult Function() switchCamera,
    required TResult Function(bool isVideoMuted) muteVideo,
    required TResult Function(int calltime) updateCallTime,
    required TResult Function(int uid) userJoined,
    required TResult Function(int uid) userLeft,
  }) {
    return switchCamera();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? joinAudioCall,
    TResult? Function()? joinVideoCall,
    TResult? Function()? leaveCall,
    TResult? Function(bool isMicToggled)? muteMic,
    TResult? Function(bool isSpeakerOn)? toggleSpeaker,
    TResult? Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult? Function()? getMicStatus,
    TResult? Function()? dispose,
    TResult? Function()? switchCamera,
    TResult? Function(bool isVideoMuted)? muteVideo,
    TResult? Function(int calltime)? updateCallTime,
    TResult? Function(int uid)? userJoined,
    TResult? Function(int uid)? userLeft,
  }) {
    return switchCamera?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? joinAudioCall,
    TResult Function()? joinVideoCall,
    TResult Function()? leaveCall,
    TResult Function(bool isMicToggled)? muteMic,
    TResult Function(bool isSpeakerOn)? toggleSpeaker,
    TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult Function()? getMicStatus,
    TResult Function()? dispose,
    TResult Function()? switchCamera,
    TResult Function(bool isVideoMuted)? muteVideo,
    TResult Function(int calltime)? updateCallTime,
    TResult Function(int uid)? userJoined,
    TResult Function(int uid)? userLeft,
    required TResult orElse(),
  }) {
    if (switchCamera != null) {
      return switchCamera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JoinAudioCallEvent value) joinAudioCall,
    required TResult Function(JoinVideoCallEvent value) joinVideoCall,
    required TResult Function(LeaveCallEvent value) leaveCall,
    required TResult Function(MuteMicEvent value) muteMic,
    required TResult Function(ToggleSpeakerEvent value) toggleSpeaker,
    required TResult Function(InititializeServiceEvent value) initializeService,
    required TResult Function(GetMicStatusEvent value) getMicStatus,
    required TResult Function(DisposeServiceEvent value) dispose,
    required TResult Function(SwitchCameraEvent value) switchCamera,
    required TResult Function(MuteVideoEvent value) muteVideo,
    required TResult Function(UpdateCallTimeEvent value) updateCallTime,
    required TResult Function(UserJoinedEvent value) userJoined,
    required TResult Function(UserLeftEvent value) userLeft,
  }) {
    return switchCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult? Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult? Function(LeaveCallEvent value)? leaveCall,
    TResult? Function(MuteMicEvent value)? muteMic,
    TResult? Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult? Function(InititializeServiceEvent value)? initializeService,
    TResult? Function(GetMicStatusEvent value)? getMicStatus,
    TResult? Function(DisposeServiceEvent value)? dispose,
    TResult? Function(SwitchCameraEvent value)? switchCamera,
    TResult? Function(MuteVideoEvent value)? muteVideo,
    TResult? Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult? Function(UserJoinedEvent value)? userJoined,
    TResult? Function(UserLeftEvent value)? userLeft,
  }) {
    return switchCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult Function(LeaveCallEvent value)? leaveCall,
    TResult Function(MuteMicEvent value)? muteMic,
    TResult Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult Function(InititializeServiceEvent value)? initializeService,
    TResult Function(GetMicStatusEvent value)? getMicStatus,
    TResult Function(DisposeServiceEvent value)? dispose,
    TResult Function(SwitchCameraEvent value)? switchCamera,
    TResult Function(MuteVideoEvent value)? muteVideo,
    TResult Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult Function(UserJoinedEvent value)? userJoined,
    TResult Function(UserLeftEvent value)? userLeft,
    required TResult orElse(),
  }) {
    if (switchCamera != null) {
      return switchCamera(this);
    }
    return orElse();
  }
}

abstract class SwitchCameraEvent implements MediaChatEvent {
  const factory SwitchCameraEvent() = _$SwitchCameraEventImpl;
}

/// @nodoc
abstract class _$$MuteVideoEventImplCopyWith<$Res> {
  factory _$$MuteVideoEventImplCopyWith(_$MuteVideoEventImpl value,
          $Res Function(_$MuteVideoEventImpl) then) =
      __$$MuteVideoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isVideoMuted});
}

/// @nodoc
class __$$MuteVideoEventImplCopyWithImpl<$Res>
    extends _$MediaChatEventCopyWithImpl<$Res, _$MuteVideoEventImpl>
    implements _$$MuteVideoEventImplCopyWith<$Res> {
  __$$MuteVideoEventImplCopyWithImpl(
      _$MuteVideoEventImpl _value, $Res Function(_$MuteVideoEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVideoMuted = null,
  }) {
    return _then(_$MuteVideoEventImpl(
      isVideoMuted: null == isVideoMuted
          ? _value.isVideoMuted
          : isVideoMuted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MuteVideoEventImpl implements MuteVideoEvent {
  const _$MuteVideoEventImpl({required this.isVideoMuted});

  @override
  final bool isVideoMuted;

  @override
  String toString() {
    return 'MediaChatEvent.muteVideo(isVideoMuted: $isVideoMuted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MuteVideoEventImpl &&
            (identical(other.isVideoMuted, isVideoMuted) ||
                other.isVideoMuted == isVideoMuted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isVideoMuted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MuteVideoEventImplCopyWith<_$MuteVideoEventImpl> get copyWith =>
      __$$MuteVideoEventImplCopyWithImpl<_$MuteVideoEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() joinAudioCall,
    required TResult Function() joinVideoCall,
    required TResult Function() leaveCall,
    required TResult Function(bool isMicToggled) muteMic,
    required TResult Function(bool isSpeakerOn) toggleSpeaker,
    required TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)
        initializeService,
    required TResult Function() getMicStatus,
    required TResult Function() dispose,
    required TResult Function() switchCamera,
    required TResult Function(bool isVideoMuted) muteVideo,
    required TResult Function(int calltime) updateCallTime,
    required TResult Function(int uid) userJoined,
    required TResult Function(int uid) userLeft,
  }) {
    return muteVideo(isVideoMuted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? joinAudioCall,
    TResult? Function()? joinVideoCall,
    TResult? Function()? leaveCall,
    TResult? Function(bool isMicToggled)? muteMic,
    TResult? Function(bool isSpeakerOn)? toggleSpeaker,
    TResult? Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult? Function()? getMicStatus,
    TResult? Function()? dispose,
    TResult? Function()? switchCamera,
    TResult? Function(bool isVideoMuted)? muteVideo,
    TResult? Function(int calltime)? updateCallTime,
    TResult? Function(int uid)? userJoined,
    TResult? Function(int uid)? userLeft,
  }) {
    return muteVideo?.call(isVideoMuted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? joinAudioCall,
    TResult Function()? joinVideoCall,
    TResult Function()? leaveCall,
    TResult Function(bool isMicToggled)? muteMic,
    TResult Function(bool isSpeakerOn)? toggleSpeaker,
    TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult Function()? getMicStatus,
    TResult Function()? dispose,
    TResult Function()? switchCamera,
    TResult Function(bool isVideoMuted)? muteVideo,
    TResult Function(int calltime)? updateCallTime,
    TResult Function(int uid)? userJoined,
    TResult Function(int uid)? userLeft,
    required TResult orElse(),
  }) {
    if (muteVideo != null) {
      return muteVideo(isVideoMuted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JoinAudioCallEvent value) joinAudioCall,
    required TResult Function(JoinVideoCallEvent value) joinVideoCall,
    required TResult Function(LeaveCallEvent value) leaveCall,
    required TResult Function(MuteMicEvent value) muteMic,
    required TResult Function(ToggleSpeakerEvent value) toggleSpeaker,
    required TResult Function(InititializeServiceEvent value) initializeService,
    required TResult Function(GetMicStatusEvent value) getMicStatus,
    required TResult Function(DisposeServiceEvent value) dispose,
    required TResult Function(SwitchCameraEvent value) switchCamera,
    required TResult Function(MuteVideoEvent value) muteVideo,
    required TResult Function(UpdateCallTimeEvent value) updateCallTime,
    required TResult Function(UserJoinedEvent value) userJoined,
    required TResult Function(UserLeftEvent value) userLeft,
  }) {
    return muteVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult? Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult? Function(LeaveCallEvent value)? leaveCall,
    TResult? Function(MuteMicEvent value)? muteMic,
    TResult? Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult? Function(InititializeServiceEvent value)? initializeService,
    TResult? Function(GetMicStatusEvent value)? getMicStatus,
    TResult? Function(DisposeServiceEvent value)? dispose,
    TResult? Function(SwitchCameraEvent value)? switchCamera,
    TResult? Function(MuteVideoEvent value)? muteVideo,
    TResult? Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult? Function(UserJoinedEvent value)? userJoined,
    TResult? Function(UserLeftEvent value)? userLeft,
  }) {
    return muteVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult Function(LeaveCallEvent value)? leaveCall,
    TResult Function(MuteMicEvent value)? muteMic,
    TResult Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult Function(InititializeServiceEvent value)? initializeService,
    TResult Function(GetMicStatusEvent value)? getMicStatus,
    TResult Function(DisposeServiceEvent value)? dispose,
    TResult Function(SwitchCameraEvent value)? switchCamera,
    TResult Function(MuteVideoEvent value)? muteVideo,
    TResult Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult Function(UserJoinedEvent value)? userJoined,
    TResult Function(UserLeftEvent value)? userLeft,
    required TResult orElse(),
  }) {
    if (muteVideo != null) {
      return muteVideo(this);
    }
    return orElse();
  }
}

abstract class MuteVideoEvent implements MediaChatEvent {
  const factory MuteVideoEvent({required final bool isVideoMuted}) =
      _$MuteVideoEventImpl;

  bool get isVideoMuted;
  @JsonKey(ignore: true)
  _$$MuteVideoEventImplCopyWith<_$MuteVideoEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCallTimeEventImplCopyWith<$Res> {
  factory _$$UpdateCallTimeEventImplCopyWith(_$UpdateCallTimeEventImpl value,
          $Res Function(_$UpdateCallTimeEventImpl) then) =
      __$$UpdateCallTimeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int calltime});
}

/// @nodoc
class __$$UpdateCallTimeEventImplCopyWithImpl<$Res>
    extends _$MediaChatEventCopyWithImpl<$Res, _$UpdateCallTimeEventImpl>
    implements _$$UpdateCallTimeEventImplCopyWith<$Res> {
  __$$UpdateCallTimeEventImplCopyWithImpl(_$UpdateCallTimeEventImpl _value,
      $Res Function(_$UpdateCallTimeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calltime = null,
  }) {
    return _then(_$UpdateCallTimeEventImpl(
      null == calltime
          ? _value.calltime
          : calltime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCallTimeEventImpl implements UpdateCallTimeEvent {
  const _$UpdateCallTimeEventImpl(this.calltime);

  @override
  final int calltime;

  @override
  String toString() {
    return 'MediaChatEvent.updateCallTime(calltime: $calltime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCallTimeEventImpl &&
            (identical(other.calltime, calltime) ||
                other.calltime == calltime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calltime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCallTimeEventImplCopyWith<_$UpdateCallTimeEventImpl> get copyWith =>
      __$$UpdateCallTimeEventImplCopyWithImpl<_$UpdateCallTimeEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() joinAudioCall,
    required TResult Function() joinVideoCall,
    required TResult Function() leaveCall,
    required TResult Function(bool isMicToggled) muteMic,
    required TResult Function(bool isSpeakerOn) toggleSpeaker,
    required TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)
        initializeService,
    required TResult Function() getMicStatus,
    required TResult Function() dispose,
    required TResult Function() switchCamera,
    required TResult Function(bool isVideoMuted) muteVideo,
    required TResult Function(int calltime) updateCallTime,
    required TResult Function(int uid) userJoined,
    required TResult Function(int uid) userLeft,
  }) {
    return updateCallTime(calltime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? joinAudioCall,
    TResult? Function()? joinVideoCall,
    TResult? Function()? leaveCall,
    TResult? Function(bool isMicToggled)? muteMic,
    TResult? Function(bool isSpeakerOn)? toggleSpeaker,
    TResult? Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult? Function()? getMicStatus,
    TResult? Function()? dispose,
    TResult? Function()? switchCamera,
    TResult? Function(bool isVideoMuted)? muteVideo,
    TResult? Function(int calltime)? updateCallTime,
    TResult? Function(int uid)? userJoined,
    TResult? Function(int uid)? userLeft,
  }) {
    return updateCallTime?.call(calltime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? joinAudioCall,
    TResult Function()? joinVideoCall,
    TResult Function()? leaveCall,
    TResult Function(bool isMicToggled)? muteMic,
    TResult Function(bool isSpeakerOn)? toggleSpeaker,
    TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult Function()? getMicStatus,
    TResult Function()? dispose,
    TResult Function()? switchCamera,
    TResult Function(bool isVideoMuted)? muteVideo,
    TResult Function(int calltime)? updateCallTime,
    TResult Function(int uid)? userJoined,
    TResult Function(int uid)? userLeft,
    required TResult orElse(),
  }) {
    if (updateCallTime != null) {
      return updateCallTime(calltime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JoinAudioCallEvent value) joinAudioCall,
    required TResult Function(JoinVideoCallEvent value) joinVideoCall,
    required TResult Function(LeaveCallEvent value) leaveCall,
    required TResult Function(MuteMicEvent value) muteMic,
    required TResult Function(ToggleSpeakerEvent value) toggleSpeaker,
    required TResult Function(InititializeServiceEvent value) initializeService,
    required TResult Function(GetMicStatusEvent value) getMicStatus,
    required TResult Function(DisposeServiceEvent value) dispose,
    required TResult Function(SwitchCameraEvent value) switchCamera,
    required TResult Function(MuteVideoEvent value) muteVideo,
    required TResult Function(UpdateCallTimeEvent value) updateCallTime,
    required TResult Function(UserJoinedEvent value) userJoined,
    required TResult Function(UserLeftEvent value) userLeft,
  }) {
    return updateCallTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult? Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult? Function(LeaveCallEvent value)? leaveCall,
    TResult? Function(MuteMicEvent value)? muteMic,
    TResult? Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult? Function(InititializeServiceEvent value)? initializeService,
    TResult? Function(GetMicStatusEvent value)? getMicStatus,
    TResult? Function(DisposeServiceEvent value)? dispose,
    TResult? Function(SwitchCameraEvent value)? switchCamera,
    TResult? Function(MuteVideoEvent value)? muteVideo,
    TResult? Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult? Function(UserJoinedEvent value)? userJoined,
    TResult? Function(UserLeftEvent value)? userLeft,
  }) {
    return updateCallTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult Function(LeaveCallEvent value)? leaveCall,
    TResult Function(MuteMicEvent value)? muteMic,
    TResult Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult Function(InititializeServiceEvent value)? initializeService,
    TResult Function(GetMicStatusEvent value)? getMicStatus,
    TResult Function(DisposeServiceEvent value)? dispose,
    TResult Function(SwitchCameraEvent value)? switchCamera,
    TResult Function(MuteVideoEvent value)? muteVideo,
    TResult Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult Function(UserJoinedEvent value)? userJoined,
    TResult Function(UserLeftEvent value)? userLeft,
    required TResult orElse(),
  }) {
    if (updateCallTime != null) {
      return updateCallTime(this);
    }
    return orElse();
  }
}

abstract class UpdateCallTimeEvent implements MediaChatEvent {
  const factory UpdateCallTimeEvent(final int calltime) =
      _$UpdateCallTimeEventImpl;

  int get calltime;
  @JsonKey(ignore: true)
  _$$UpdateCallTimeEventImplCopyWith<_$UpdateCallTimeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserJoinedEventImplCopyWith<$Res> {
  factory _$$UserJoinedEventImplCopyWith(_$UserJoinedEventImpl value,
          $Res Function(_$UserJoinedEventImpl) then) =
      __$$UserJoinedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int uid});
}

/// @nodoc
class __$$UserJoinedEventImplCopyWithImpl<$Res>
    extends _$MediaChatEventCopyWithImpl<$Res, _$UserJoinedEventImpl>
    implements _$$UserJoinedEventImplCopyWith<$Res> {
  __$$UserJoinedEventImplCopyWithImpl(
      _$UserJoinedEventImpl _value, $Res Function(_$UserJoinedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$UserJoinedEventImpl(
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UserJoinedEventImpl implements UserJoinedEvent {
  const _$UserJoinedEventImpl(this.uid);

  @override
  final int uid;

  @override
  String toString() {
    return 'MediaChatEvent.userJoined(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserJoinedEventImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserJoinedEventImplCopyWith<_$UserJoinedEventImpl> get copyWith =>
      __$$UserJoinedEventImplCopyWithImpl<_$UserJoinedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() joinAudioCall,
    required TResult Function() joinVideoCall,
    required TResult Function() leaveCall,
    required TResult Function(bool isMicToggled) muteMic,
    required TResult Function(bool isSpeakerOn) toggleSpeaker,
    required TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)
        initializeService,
    required TResult Function() getMicStatus,
    required TResult Function() dispose,
    required TResult Function() switchCamera,
    required TResult Function(bool isVideoMuted) muteVideo,
    required TResult Function(int calltime) updateCallTime,
    required TResult Function(int uid) userJoined,
    required TResult Function(int uid) userLeft,
  }) {
    return userJoined(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? joinAudioCall,
    TResult? Function()? joinVideoCall,
    TResult? Function()? leaveCall,
    TResult? Function(bool isMicToggled)? muteMic,
    TResult? Function(bool isSpeakerOn)? toggleSpeaker,
    TResult? Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult? Function()? getMicStatus,
    TResult? Function()? dispose,
    TResult? Function()? switchCamera,
    TResult? Function(bool isVideoMuted)? muteVideo,
    TResult? Function(int calltime)? updateCallTime,
    TResult? Function(int uid)? userJoined,
    TResult? Function(int uid)? userLeft,
  }) {
    return userJoined?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? joinAudioCall,
    TResult Function()? joinVideoCall,
    TResult Function()? leaveCall,
    TResult Function(bool isMicToggled)? muteMic,
    TResult Function(bool isSpeakerOn)? toggleSpeaker,
    TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult Function()? getMicStatus,
    TResult Function()? dispose,
    TResult Function()? switchCamera,
    TResult Function(bool isVideoMuted)? muteVideo,
    TResult Function(int calltime)? updateCallTime,
    TResult Function(int uid)? userJoined,
    TResult Function(int uid)? userLeft,
    required TResult orElse(),
  }) {
    if (userJoined != null) {
      return userJoined(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JoinAudioCallEvent value) joinAudioCall,
    required TResult Function(JoinVideoCallEvent value) joinVideoCall,
    required TResult Function(LeaveCallEvent value) leaveCall,
    required TResult Function(MuteMicEvent value) muteMic,
    required TResult Function(ToggleSpeakerEvent value) toggleSpeaker,
    required TResult Function(InititializeServiceEvent value) initializeService,
    required TResult Function(GetMicStatusEvent value) getMicStatus,
    required TResult Function(DisposeServiceEvent value) dispose,
    required TResult Function(SwitchCameraEvent value) switchCamera,
    required TResult Function(MuteVideoEvent value) muteVideo,
    required TResult Function(UpdateCallTimeEvent value) updateCallTime,
    required TResult Function(UserJoinedEvent value) userJoined,
    required TResult Function(UserLeftEvent value) userLeft,
  }) {
    return userJoined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult? Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult? Function(LeaveCallEvent value)? leaveCall,
    TResult? Function(MuteMicEvent value)? muteMic,
    TResult? Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult? Function(InititializeServiceEvent value)? initializeService,
    TResult? Function(GetMicStatusEvent value)? getMicStatus,
    TResult? Function(DisposeServiceEvent value)? dispose,
    TResult? Function(SwitchCameraEvent value)? switchCamera,
    TResult? Function(MuteVideoEvent value)? muteVideo,
    TResult? Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult? Function(UserJoinedEvent value)? userJoined,
    TResult? Function(UserLeftEvent value)? userLeft,
  }) {
    return userJoined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult Function(LeaveCallEvent value)? leaveCall,
    TResult Function(MuteMicEvent value)? muteMic,
    TResult Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult Function(InititializeServiceEvent value)? initializeService,
    TResult Function(GetMicStatusEvent value)? getMicStatus,
    TResult Function(DisposeServiceEvent value)? dispose,
    TResult Function(SwitchCameraEvent value)? switchCamera,
    TResult Function(MuteVideoEvent value)? muteVideo,
    TResult Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult Function(UserJoinedEvent value)? userJoined,
    TResult Function(UserLeftEvent value)? userLeft,
    required TResult orElse(),
  }) {
    if (userJoined != null) {
      return userJoined(this);
    }
    return orElse();
  }
}

abstract class UserJoinedEvent implements MediaChatEvent {
  const factory UserJoinedEvent(final int uid) = _$UserJoinedEventImpl;

  int get uid;
  @JsonKey(ignore: true)
  _$$UserJoinedEventImplCopyWith<_$UserJoinedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLeftEventImplCopyWith<$Res> {
  factory _$$UserLeftEventImplCopyWith(
          _$UserLeftEventImpl value, $Res Function(_$UserLeftEventImpl) then) =
      __$$UserLeftEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int uid});
}

/// @nodoc
class __$$UserLeftEventImplCopyWithImpl<$Res>
    extends _$MediaChatEventCopyWithImpl<$Res, _$UserLeftEventImpl>
    implements _$$UserLeftEventImplCopyWith<$Res> {
  __$$UserLeftEventImplCopyWithImpl(
      _$UserLeftEventImpl _value, $Res Function(_$UserLeftEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$UserLeftEventImpl(
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UserLeftEventImpl implements UserLeftEvent {
  const _$UserLeftEventImpl(this.uid);

  @override
  final int uid;

  @override
  String toString() {
    return 'MediaChatEvent.userLeft(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLeftEventImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLeftEventImplCopyWith<_$UserLeftEventImpl> get copyWith =>
      __$$UserLeftEventImplCopyWithImpl<_$UserLeftEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() joinAudioCall,
    required TResult Function() joinVideoCall,
    required TResult Function() leaveCall,
    required TResult Function(bool isMicToggled) muteMic,
    required TResult Function(bool isSpeakerOn) toggleSpeaker,
    required TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)
        initializeService,
    required TResult Function() getMicStatus,
    required TResult Function() dispose,
    required TResult Function() switchCamera,
    required TResult Function(bool isVideoMuted) muteVideo,
    required TResult Function(int calltime) updateCallTime,
    required TResult Function(int uid) userJoined,
    required TResult Function(int uid) userLeft,
  }) {
    return userLeft(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? joinAudioCall,
    TResult? Function()? joinVideoCall,
    TResult? Function()? leaveCall,
    TResult? Function(bool isMicToggled)? muteMic,
    TResult? Function(bool isSpeakerOn)? toggleSpeaker,
    TResult? Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult? Function()? getMicStatus,
    TResult? Function()? dispose,
    TResult? Function()? switchCamera,
    TResult? Function(bool isVideoMuted)? muteVideo,
    TResult? Function(int calltime)? updateCallTime,
    TResult? Function(int uid)? userJoined,
    TResult? Function(int uid)? userLeft,
  }) {
    return userLeft?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? joinAudioCall,
    TResult Function()? joinVideoCall,
    TResult Function()? leaveCall,
    TResult Function(bool isMicToggled)? muteMic,
    TResult Function(bool isSpeakerOn)? toggleSpeaker,
    TResult Function(
            void Function(dynamic, String) onError,
            void Function(dynamic, int, int) onUserJoined,
            void Function(dynamic, int, dynamic) onUserOffline,
            void Function(dynamic, dynamic) onRtcStats,
            void Function(dynamic, int) onJoinChannelSuccess,
            void Function(dynamic, dynamic) onLeaveChannel)?
        initializeService,
    TResult Function()? getMicStatus,
    TResult Function()? dispose,
    TResult Function()? switchCamera,
    TResult Function(bool isVideoMuted)? muteVideo,
    TResult Function(int calltime)? updateCallTime,
    TResult Function(int uid)? userJoined,
    TResult Function(int uid)? userLeft,
    required TResult orElse(),
  }) {
    if (userLeft != null) {
      return userLeft(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(JoinAudioCallEvent value) joinAudioCall,
    required TResult Function(JoinVideoCallEvent value) joinVideoCall,
    required TResult Function(LeaveCallEvent value) leaveCall,
    required TResult Function(MuteMicEvent value) muteMic,
    required TResult Function(ToggleSpeakerEvent value) toggleSpeaker,
    required TResult Function(InititializeServiceEvent value) initializeService,
    required TResult Function(GetMicStatusEvent value) getMicStatus,
    required TResult Function(DisposeServiceEvent value) dispose,
    required TResult Function(SwitchCameraEvent value) switchCamera,
    required TResult Function(MuteVideoEvent value) muteVideo,
    required TResult Function(UpdateCallTimeEvent value) updateCallTime,
    required TResult Function(UserJoinedEvent value) userJoined,
    required TResult Function(UserLeftEvent value) userLeft,
  }) {
    return userLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult? Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult? Function(LeaveCallEvent value)? leaveCall,
    TResult? Function(MuteMicEvent value)? muteMic,
    TResult? Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult? Function(InititializeServiceEvent value)? initializeService,
    TResult? Function(GetMicStatusEvent value)? getMicStatus,
    TResult? Function(DisposeServiceEvent value)? dispose,
    TResult? Function(SwitchCameraEvent value)? switchCamera,
    TResult? Function(MuteVideoEvent value)? muteVideo,
    TResult? Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult? Function(UserJoinedEvent value)? userJoined,
    TResult? Function(UserLeftEvent value)? userLeft,
  }) {
    return userLeft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(JoinAudioCallEvent value)? joinAudioCall,
    TResult Function(JoinVideoCallEvent value)? joinVideoCall,
    TResult Function(LeaveCallEvent value)? leaveCall,
    TResult Function(MuteMicEvent value)? muteMic,
    TResult Function(ToggleSpeakerEvent value)? toggleSpeaker,
    TResult Function(InititializeServiceEvent value)? initializeService,
    TResult Function(GetMicStatusEvent value)? getMicStatus,
    TResult Function(DisposeServiceEvent value)? dispose,
    TResult Function(SwitchCameraEvent value)? switchCamera,
    TResult Function(MuteVideoEvent value)? muteVideo,
    TResult Function(UpdateCallTimeEvent value)? updateCallTime,
    TResult Function(UserJoinedEvent value)? userJoined,
    TResult Function(UserLeftEvent value)? userLeft,
    required TResult orElse(),
  }) {
    if (userLeft != null) {
      return userLeft(this);
    }
    return orElse();
  }
}

abstract class UserLeftEvent implements MediaChatEvent {
  const factory UserLeftEvent(final int uid) = _$UserLeftEventImpl;

  int get uid;
  @JsonKey(ignore: true)
  _$$UserLeftEventImplCopyWith<_$UserLeftEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
