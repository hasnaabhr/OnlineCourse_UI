// ignore_for_file: unnecessary_const

import 'package:coursecenter/widgets/chat_buble.dart';
import 'package:coursecenter/widgets/friend_chat_buble.dart';
import 'package:flutter/material.dart';

class Connect extends StatelessWidget {
  const Connect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(0xff251E91),
          actions: const [
            const SizedBox(
              width: 20,
            ),
            const Icon(
              Icons.call,
              size: 20,
              color: Colors.white,
            ),
            const SizedBox(
              width: 20,
            ),
            const Icon(
              Icons.more_vert,
              size: 20,
              color: Colors.white,
            ),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: const [
                    ChatBuble(
                        message: 'Hello class, welcome to today\'s lecture!'),
                    FriendChatBuble(message: 'Hi teacher!'),
                    FriendChatBuble(message: 'What will we learn today?'),
                    ChatBuble(
                        message:
                            'Today we will cover the topic of Mathematics.'),
                    ChatBuble(
                        message: 'Please open your textbooks to page 50.'),
                    ChatBuble(message: ' Does anyone have any questions?'),
                    FriendChatBuble(
                        message: 'I have a question about the last topic.'),
                    ChatBuble(message: 'Sure, go ahead and ask.'),
                    ChatBuble(
                        message: 'Hello class, welcome to today\'s lecture!'),
                    FriendChatBuble(message: 'Hi teacher!'),
                    FriendChatBuble(message: 'What will we learn today?'),
                    ChatBuble(
                        message:
                            'Today we will cover the topic of Mathematics.'),
                    ChatBuble(
                        message: 'Please open your textbooks to page 50.'),
                    ChatBuble(message: ' Does anyone have any questions?'),
                    FriendChatBuble(
                        message: 'I have a question about the last topic.'),
                    ChatBuble(message: 'Sure, go ahead and ask.'),
                    FriendChatBuble(message: 'message'),
                    ChatBuble(message: 'message'),
                    FriendChatBuble(message: 'message'),
                    ChatBuble(message: 'message'),
                    FriendChatBuble(message: 'message'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 100,
                          child: TextField(
                            enabled: true,
                            style: const TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(82, 158, 158, 158)),
                            decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Type a Message',
                              prefixIcon: IconButton(
                                icon: const Icon(
                                  Icons.emoji_emotions_outlined,
                                  size: 30,
                                  color: Color.fromARGB(255, 158, 158, 158),
                                ),
                                onPressed: () {},
                              ),
                              suffixIcon: Row(
                                children: [
                                  const SizedBox(
                                    width: 200,
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.attachment,
                                        size: 30,
                                        color:
                                            Color.fromARGB(255, 158, 158, 158)),
                                    onPressed: () {},
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.camera_alt,
                                        size: 30,
                                        color:
                                            Color.fromARGB(255, 158, 158, 158)),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const CircleAvatar(
                          backgroundColor: const Color(0xff251E91),
                          radius: 30,
                          child: Icon(
                            size: 30,
                            Icons.mic,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ]),
              ),
            ],
          ),
        ));
  }
}
