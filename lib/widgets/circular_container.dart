import 'package:flutter/material.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.child,
    this.padding = 0,
    this.height = 400,
    this.width = 400,
    this.raduis = 400,
    this.margin,
    this.backgroundColor = Colors.white,
  });

  final Widget? child;
  final double padding;
  final double? height;
  final double? width;
  final double raduis;
  final Color backgroundColor;
  final EdgeInsets? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(raduis),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
