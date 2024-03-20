// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coursecenter/widgets/mylearning_custome_container.dart';
import 'package:flutter/material.dart';

class LessonItem extends StatelessWidget {
  const LessonItem({
    super.key,
    required this.lessonImageUrl, // Add lesson image URL parameter
  });

  final String lessonImageUrl; // Define lesson image URL parameter

  @override
  Widget build(BuildContext context) {
    return MyLearning(lessonImageUrl: lessonImageUrl);
  }
}
