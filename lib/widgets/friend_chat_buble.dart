import 'package:flutter/material.dart';

class FriendChatBuble extends StatelessWidget {
  const FriendChatBuble({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8, right: 8),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration:const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),

            // topRight: Radius.circular(30),
            bottomRight: Radius.circular(15),
          ),
          color: Colors.grey,
        ),
        child: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
