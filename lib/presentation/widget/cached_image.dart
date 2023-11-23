import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    required this.imageUrl,
    super.key,
    this.thumbnailWidget,
    this.borderRadius,
    this.height,
    this.width,
  });
  final String imageUrl;
  final Widget? thumbnailWidget;
  final double? borderRadius;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 0)),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            thumbnailWidget ??
            Center(
              child: SizedBox(
                height: 10,
                width: 10,
                child: CircularProgressIndicator(
                  value: downloadProgress.progress,
                  strokeWidth: 0.5,
                ),
              ),
            ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        height: height,
        width: width,
      ),
    );
  }
}
