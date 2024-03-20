import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.url,
  });
  final String url;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 136,
      backgroundImage: AssetImage(url),
    );
  }
}
