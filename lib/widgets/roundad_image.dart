import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.height,
    this.width,
    this.borderRadius = 16,
    required this.imageUrl,
    this.border,
    this.background = Colors.white,
    this.fit = BoxFit.contain,
    this.padding,
    this.onpressed,
    this.isNetworkImage = false,
    this.applyImageRadius = true,
  });
  final double? width, height;
  final double borderRadius;
  final String imageUrl;
  final BoxBorder? border;
  final Color background;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final bool applyImageRadius;
  final VoidCallbackAction? onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        color: background,
        border: border,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ClipRRect(
        borderRadius: applyImageRadius
            ? BorderRadius.circular(borderRadius)
            : BorderRadius.zero,
        child: Image(
          image: isNetworkImage
              ? NetworkImage(imageUrl)
              : AssetImage(imageUrl) as ImageProvider,
          fit: fit,
        ),
      ),
    );
  }
}
