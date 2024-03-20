import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    this.textcolor,
    this.showActionButton = true,
    this.buttonTitle = 'View All',
    this.onPressed,
    required this.title,
  });
  final Color? textcolor;
  final bool showActionButton;
  final String title;
  final String buttonTitle;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: textcolor, fontWeightDelta: 10),
            maxLines: 1,
            overflow: TextOverflow.ellipsis),
        if (showActionButton)
          TextButton(
              onPressed: onPressed,
              child: Text(
                buttonTitle,
                style: const TextStyle(
                    color: Color.fromARGB(255, 16, 8, 120),
                    fontWeight: FontWeight.bold),
              ))
      ],
    );
  }
}
