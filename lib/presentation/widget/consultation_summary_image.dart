import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mint/gen/assets.gen.dart';
import 'package:mint/presentation/widget/cached_image.dart';

class SummaryImage extends StatelessWidget {
  const SummaryImage({required this.imageUrl, super.key});
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 11.h,
        bottom: 11.h,
        right: 16.w,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          10.r,
        ),
        child: SizedBox(
          height: 84.h,
          width: 84.h,
          child: FittedBox(
            fit: BoxFit.cover,
            child: imageUrl != null
                ? CachedImage(
                    imageUrl: imageUrl!,
                  )
                : Image.asset(Assets.png.missingAvatar.path),
          ),
        ),
      ),
    );
  }
}
