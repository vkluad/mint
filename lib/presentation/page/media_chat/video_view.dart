import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mint/backbone/bloc_status.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/backbone/utils.dart';
import 'package:mint/domain/entity/booking.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/presentation/bloc/booking/booking_bloc.dart';
import 'package:mint/presentation/bloc/media_chat/media_chat_bloc.dart';

import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/audio_chat_button.dart';
import 'package:mint/presentation/widget/phone_call_button.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class VideoViewChat extends StatefulWidget {
  const VideoViewChat({
    required this.booking,
    required this.doctor,
    super.key,
  });

  final Booking booking;
  final Doctor doctor;

  @override
  State<VideoViewChat> createState() => _VideoViewChatState();
}

class _VideoViewChatState extends State<VideoViewChat> {
  final _bloc = sl<MediaChatBloc>();
  final _bookingBloc = sl<BookingBloc>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MediaChatBloc, MediaChatState>(
      bloc: _bloc,
      builder: (context, state) {
        return state.status == MediaChatStatus.video
            ? Scaffold(
                body: Stack(
                  children: [
                    if (state.localView != null) state.localView!,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 86.h, left: 16.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.doctor.name,
                                style: TextStyles.headline.copyWith(
                                  color: Palette.white,
                                ),
                              ),
                              Text(
                                formatTime(state.calltime ?? 0),
                                style: TextStyles.body.copyWith(
                                  color: Palette.white,
                                  fontSize: 13.sp,
                                ),
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        if (state.remoteView != null &&
                            state.remoteView!.isNotEmpty)
                          Padding(
                            padding: EdgeInsets.only(bottom: 86.h),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: state.remoteView
                                          ?.map(
                                            (e) => Padding(
                                              padding:
                                                  EdgeInsets.only(right: 16.w),
                                              child: SizedBox(
                                                width: 117.w,
                                                height: 156.h,
                                                child: e,
                                              ),
                                            ),
                                          )
                                          .toList() ??
                                      [],
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(bottom: 5.h, right: 16.w, left: 16.w),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 14.w),
                              child: MediaChatButton(
                                opacity: 0.8,
                                callback: () {
                                  _bloc.add(const SwitchCameraEvent());
                                },
                                buttonIcon:
                                    SvgPicture.asset(Assets.svg.reverseCamera),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 14.w),
                              child: MediaChatButton(
                                opacity: 0.8,
                                callback: () {
                                  _bloc.add(
                                    MuteMicEvent(
                                      isMicToggled: state.isMicToggled!,
                                    ),
                                  );
                                },
                                buttonIcon: state.isMicToggled ?? true
                                    ? SvgPicture.asset(Assets.svg.mic)
                                    : SvgPicture.asset(Assets.svg.mutedMic),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 14.w),
                              child: PhoneCallButton(
                                callback: state.isJoined ?? true
                                    ? () {
                                        _bloc.add(const LeaveCallEvent());
                                        context.router.pop();
                                        showReviewDialog(
                                          context: context,
                                          booking: widget.booking,
                                          reviewCallback: () {
                                            _bookingBloc.add(
                                              UpdateBookingStatusEvent(
                                                widget.booking.id,
                                              ),
                                            );
                                          },
                                        );
                                      }
                                    : () async {
                                        _bloc.add(const JoinAudioCallEvent());
                                      },
                                buttonColor: state.isJoined ?? true
                                    ? Palette.whiteErrorRed
                                    : Colors.green,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 14.w),
                              child: MediaChatButton(
                                callback: () {
                                  _bloc.add(
                                    MuteVideoEvent(
                                      isVideoMuted: !state.isVidToggled!,
                                    ),
                                  );
                                },
                                buttonIcon:
                                    SvgPicture.asset(Assets.svg.muteVid),
                              ),
                            ),
                            MediaChatButton(
                              opacity: 0.8,
                              callback: () {
                                context.router.navigate(
                                  ChatRoute(doctorId: widget.doctor.id),
                                );
                              },
                              buttonIcon: SvgPicture.asset(
                                Assets.svg.mediaChat,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }
}
