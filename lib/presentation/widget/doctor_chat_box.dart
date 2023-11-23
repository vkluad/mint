import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/domain/entity/message.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class ChatBox extends StatelessWidget {
  const ChatBox({
    required this.doctor,
    required this.lastMessage,
    required this.userId,
    super.key,
    this.unreadCount,
  });
  final Doctor doctor;
  final Message lastMessage;
  final int? unreadCount;
  final String userId;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Row(
            children: [
              Text(
                doctor.name,
                style: TextStyles.headline1.copyWith(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Text(
                DateFormat('HH:mm').format(lastMessage.sent),
                style: TextStyles.caption1.copyWith(
                  fontSize: 14.sp,
                  color: Theme.of(context).primaryColor,
                ),
              )
            ],
          ),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(doctor.image ?? ''),
            radius: 22.5.r,
          ),
          subtitle: Row(
            children: [
              if (lastMessage.type == 'text')
                Expanded(
                  child: Text(
                    lastMessage.msg ?? '',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.caption1.copyWith(
                      fontSize: 14.sp,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                )
              else
                Text(
                  AppLocalizations.of(context)!.photo,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.caption1.copyWith(
                    fontSize: 14.sp,
                    color: Palette.mainBlue,
                  ),
                ),
              const Spacer(),
              if (lastMessage.fromId == userId)
                SvgPicture.asset(Assets.svg.chatCheckmark),
              if (unreadCount != null &&
                  unreadCount != 0 &&
                  lastMessage.fromId != userId)
                CircleAvatar(
                  radius: 11.r,
                  backgroundColor: Palette.mainBlue,
                  child: Text(
                    unreadCount.toString(),
                    style: TextStyles.caption1.copyWith(
                      fontSize: 14.sp,
                      color: Palette.white,
                    ),
                  ),
                )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Divider(
            height: 5.h,
            thickness: 2,
          ),
        )
      ],
    );
  }
}
