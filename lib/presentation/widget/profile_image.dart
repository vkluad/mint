import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/theme/palette.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key, this.imageUrl});
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.h, top: 16.h),
      child: Container(
        height: 111.h,
        width: 111.w,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Palette.white,
          ),
          color: Palette.white,
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: imageUrl != null
                ? CachedNetworkImageProvider(
                    imageUrl!,
                  )
                : AssetImage(Assets.png.missingAvatar.path) as ImageProvider,
          ),
        ),
      ),
    );
  }
}
