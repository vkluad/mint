import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mint/domain/entity/notification.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationCard extends StatefulWidget {
  const NotificationCard({
    required this.notification,
    this.doctorImageUrl,
    super.key,
  });
  final UserNotification notification;
  final String? doctorImageUrl;

  @override
  State<NotificationCard> createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  Timer? timer;
  String? coloredNotificationWord;
  String? commonNotificationText;

  @override
  void initState() {
    super.initState();
    coloredNotificationWord = widget.notification.text.split(' ').last;
    final temp = widget.notification.text.split(' ')..removeLast();
    final string = '${temp.join(' ')} ';
    commonNotificationText = string;
    timer = Timer.periodic(const Duration(minutes: 1), _updateState);
  }

  void _updateState(Timer timer) {
    setState(() {});
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              if (widget.notification.type == 'chat')
                CircleAvatar(
                  radius: 24.r,
                  backgroundImage: widget.doctorImageUrl != null
                      ? NetworkImage(widget.doctorImageUrl!)
                      : AssetImage(Assets.png.missingAvatar.path)
                          as ImageProvider,
                )
              else
                CircleAvatar(
                  radius: 24.r,
                  child: SvgPicture.asset(
                    Assets.svg.bookingCheckmark,
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).canvasColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(left: 19.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: commonNotificationText,
                              style: TextStyles.body1.copyWith(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            TextSpan(
                              text: coloredNotificationWord,
                              style: TextStyles.body1
                                  .copyWith(color: Palette.mainBlue),
                            )
                          ],
                        ),
                      ),
                      Text(
                        timeago.format(
                          widget.notification.timeSent,
                          locale: 'en',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
