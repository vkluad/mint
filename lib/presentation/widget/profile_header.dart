import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/domain/entity/user.dart' as user_entity;
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/add_profile_photo_button.dart';
import 'package:mint/presentation/widget/profile_image.dart';

import 'package:mint/theme/palette.dart';
import 'package:mint/theme/text_styles.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader(
      {required this.user, super.key, this.isEditing, this.imageCallback,});
  final user_entity.User user;
  final bool? isEditing;
  final VoidCallback? imageCallback;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Palette.mainBlue,
          height: isEditing != null ? 226.h : 244.h,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (isEditing == null)
                  ProfileImage(
                    imageUrl: user.image,
                  )
                else
                  Stack(
                    children: [
                      ProfileImage(
                        imageUrl: user.image,
                      ),
                      Positioned(
                        left: 75.w,
                        top: 97.h,
                        child: AddProfilePhotoButton(
                          callback: imageCallback,
                        ),
                      )
                    ],
                  ),
                Text(
                  user.firstName != null && user.lastName != null
                      ? '${user.firstName} ${user.lastName}'
                      : AppLocalizations.of(context)!.unnamed,
                  style: TextStyles.title2.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Palette.white,
                  ),
                ),
                if (isEditing == null)
                  Text(
                    user.number,
                    style: TextStyles.footnote.copyWith(color: Palette.white),
                  ),
              ],
            ),
          ),
        ),
        if (isEditing != null)
          Positioned(
            top: 11.h,
            child: GestureDetector(
              onTap: () => context.router.navigate(const ProfileRoute()),
              child: Row(
                children: [
                  const Icon(
                    Icons.chevron_left,
                    color: Palette.white,
                  ),
                  Text(
                    AppLocalizations.of(context)!.back,
                    style: TextStyles.body.copyWith(
                      color: Palette.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
