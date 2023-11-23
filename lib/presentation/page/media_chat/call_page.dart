import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mint/backbone/bloc_status.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/domain/entity/booking.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/presentation/bloc/media_chat/media_chat_bloc.dart';
import 'package:mint/presentation/bloc/permission/permission_bloc.dart';
import 'package:mint/presentation/page/media_chat/audio_view.dart';
import 'package:mint/presentation/page/media_chat/video_view.dart';
import 'package:mint/presentation/widget/permission_require_screen.dart';

@RoutePage()
class MediaCallPage extends StatefulWidget {
  const MediaCallPage({
    required this.doctor,
    required this.isVideoCall,
    required this.booking,
    super.key,
  });
  final Doctor doctor;
  final bool isVideoCall;
  final Booking booking;
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<MediaCallPage> {
  final _bloc = sl<MediaChatBloc>();
  final _permissionBloc = sl<PermissionBloc>();
  @override
  void initState() {
    super.initState();
    _permissionBloc
      ..add(const RequestChatPermissionEvent())
      ..add(const GetChatPermissionEvent());

    _bloc.add(
      InititializeServiceEvent(
        onError: (dynamic err, String msg) {
          debugPrint('[onError] err: $err, msg: $msg');
        },
        onRtcStats: (connection, stats) {
          _bloc.add(UpdateCallTimeEvent((stats as RtcStats).duration ?? 1));
        },
        onJoinChannelSuccess: (dynamic connection, int elapsed) {
          debugPrint(
            '[onJoinChannelSuccess] connection: ${connection.toJson()} elapsed: $elapsed',
          );
        },
        onUserJoined: (dynamic connection, int rUid, int elapsed) {
          _bloc.add(UserJoinedEvent(rUid));
        },
        onUserOffline: (dynamic connection, int rUid, dynamic reason) {
          _bloc.add(UserLeftEvent(rUid));
        },
        onLeaveChannel: (dynamic connection, dynamic stats) {
          _bloc.add(const UpdateCallTimeEvent(0));
          debugPrint(
            '[onLeaveChannel] connection: ${connection.toJson()} stats: ${stats.toJson()}',
          );
        },
      ),
    );
    widget.isVideoCall
        ? _bloc.add(const JoinVideoCallEvent())
        : _bloc.add(const JoinAudioCallEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PermissionBloc, PermissionState>(
      bloc: _permissionBloc,
      builder: (context, state) {
        return state.status ==
                    PermissionNotificationStatus.allPermissionsGranted ||
                state.status ==
                    PermissionNotificationStatus.mediaPermissionGranted
            ? BlocBuilder<MediaChatBloc, MediaChatState>(
                bloc: _bloc,
                builder: (context, state) {
                  return state.status == MediaChatStatus.video
                      ? VideoViewChat(
                          booking: widget.booking,
                          doctor: widget.doctor,
                        )
                      : state.status == MediaChatStatus.audio
                          ? AudioViewChat(
                              doctor: widget.doctor,
                              booking: widget.booking,
                            )
                          : const SizedBox.shrink();
                },
              )
            : const PermissionWaitingScreen();
      },
    );
  }
}
