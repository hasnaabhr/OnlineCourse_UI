import 'package:flutter/material.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer({
    super.key,
    this.child,
    this.padding,
    this.height,
    this.width,
    this.raduis=16,
    this.margin,
    this.backgroundColor = Colors.white,
    this.showBorder=false,
    this.borderColor=const Color(0xff251E91)
  });

  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;
  final double raduis;
  final Color backgroundColor;
   final Color borderColor;
  final EdgeInsetsGeometry? margin;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(raduis),
        color: backgroundColor,
        border: showBorder?Border.all(color: borderColor):null
      ),
      child: child,
    );
  }
}
