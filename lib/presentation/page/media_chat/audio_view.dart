import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
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
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/booking/booking_bloc.dart';
import 'package:mint/presentation/bloc/media_chat/media_chat_bloc.dart';
import 'package:mint/presentation/widget/audio_chat_button.dart';
import 'package:mint/presentation/widget/phone_call_button.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';
import 'package:permission_handler/permission_handler.dart';

class AudioViewChat extends StatefulWidget {
  const AudioViewChat({
    required this.doctor,
    required this.booking,
    super.key,
  });
  final Doctor doctor;

  final Booking booking;
  @override
  State<AudioViewChat> createState() => _AudioViewChatState();
}

class _AudioViewChatState extends State<AudioViewChat> {
  final _bloc = sl<MediaChatBloc>();
  final _bookingBloc = sl<BookingBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MediaChatBloc, MediaChatState>(
      bloc: _bloc,
      builder: (context, state) {
        return state.status == MediaChatStatus.audio
            ? Scaffold(
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                body: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 22.h),
                          child: CircleAvatar(
                            radius: 87.r,
                            backgroundImage: widget.doctor.image != null
                                ? CachedNetworkImageProvider(
                                    widget.doctor.image!,
                                  )
                                : Image.asset(Assets.png.missingAvatar.path)
                                    .image,
                          ),
                        ),
                        Text(
                          widget.doctor.name,
                          style: TextStyles.title1.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        if (state.isJoined == null)
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.h),
                            child: Text(
                              AppLocalizations.of(context)!.waitingConnect,
                            ),
                          ),
                        Padding(
                          padding: EdgeInsets.only(top: 2.h),
                          child: Text(formatTime(state.calltime ?? 0)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 115.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MediaChatButton(
                                callback: () async {
                                  _bloc.add(
                                    const ToggleSpeakerEvent(
                                      isSpeakerOn: true,
                                    ),
                                  );
                                },
                                buttonIcon: SvgPicture.asset(
                                  Assets.svg.speaker,
                                  colorFilter: ColorFilter.mode(
                                    Theme.of(context).primaryColor,
                                    BlendMode.srcIn,
                                  ),
                                ),
                                buttonText:
                                    AppLocalizations.of(context)!.speaker,
                              ),
                              MediaChatButton(
                                callback: () {
                                  _bloc.add(const JoinVideoCallEvent());
                                },
                                buttonIcon: SvgPicture.asset(
                                  Assets.svg.vid,
                                  colorFilter: ColorFilter.mode(
                                    Theme.of(context).primaryColor,
                                    BlendMode.srcIn,
                                  ),
                                ),
                                buttonText:
                                    AppLocalizations.of(context)!.videoCall,
                              ),
                              MediaChatButton(
                                callback: () async {
                                  _bloc.add(
                                    MuteMicEvent(
                                      isMicToggled: state.isMicToggled!,
                                    ),
                                  );
                                },
                                buttonIcon: state.isMicToggled ?? true
                                    ? SvgPicture.asset(
                                        Assets.svg.mic,
                                        colorFilter: ColorFilter.mode(
                                          Theme.of(context).primaryColor,
                                          BlendMode.srcIn,
                                        ),
                                      )
                                    : SvgPicture.asset(
                                        Assets.svg.mutedMic,
                                        colorFilter: ColorFilter.mode(
                                          Theme.of(context).primaryColor,
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                buttonText: AppLocalizations.of(context)!.mute,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 11.h,
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
                                          widget.booking.id,),
                                    );
                                  },
                                );
                              }
                            : () async {
                                if (defaultTargetPlatform ==
                                    TargetPlatform.android) {
                                  await Permission.microphone.request();
                                }
                              },
                        buttonColor: state.isJoined ?? true
                            ? Palette.whiteErrorRed
                            : Colors.green,
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
