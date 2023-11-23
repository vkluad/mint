import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/presentation/widget/cached_image.dart';

class CheckoutDoctorImage extends StatelessWidget {
  const CheckoutDoctorImage({required this.imageUrl, super.key});
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 8.w,
      ),
      child: SizedBox(
        width: 39.w,
        height: 39.h,
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(
              8.r,
            ),
          ),
          child: imageUrl != null
              ? CachedImage(
                  imageUrl: imageUrl!,
                )
              : Image.asset(Assets.png.missingAvatar.path),
        ),
      ),
    );
  }
}
