import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/presentation/widget/back_button.dart';

import 'package:mint/theme/text_styles.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({required this.doctor, super.key});
  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      leading: const CustomBackButton(),
      leadingWidth: 75.w,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 18.w),
          child: CircleAvatar(
            radius: 15.r,
            backgroundImage: doctor.image != null
                ? CachedNetworkImageProvider(
                    doctor.image!,
                  )
                : Image.asset(Assets.png.missingAvatar.path).image,
          ),
        )
      ],
      title: Text(
        doctor.name,
        style: TextStyles.headline1.copyWith(
          fontWeight: FontWeight.w600,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
