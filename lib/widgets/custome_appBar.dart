// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tappbar extends StatelessWidget implements PreferredSizeWidget {
  const Tappbar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.leadingOnPressed,
    this.actions,
    this.background,
    this.imagePath,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final Color? background;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 40,
          color: background,
        ),
        AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: showBackArrow
              ? IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                )
              : leadingIcon != null
                  ? IconButton(
                      onPressed: leadingOnPressed,
                      icon: Icon(leadingIcon),
                    )
                  : null,
          title: title,
          actions: [
            if (imagePath != null)
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  imagePath!,
                  height: 40,
                  width: 40,
                ),
              ),
            ...?actions,
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
