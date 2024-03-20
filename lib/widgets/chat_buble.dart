import 'package:flutter/material.dart';

class ChatBuble extends StatelessWidget {
  const ChatBuble({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
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
          color: Color(0xff251E91),
        ),
        child: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
