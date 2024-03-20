import 'package:coursecenter/widgets/ins_work.dart';
import 'package:flutter/material.dart';

class Materials extends StatelessWidget {
  const Materials({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff251E91),
      body: InstructorRoles(
        color: Colors.orange.withGreen(100),
        title: 'Course Material',
        subtitle:
            'Easily access Course Materials and readings Uploadesd by Instructor,aiding your understanding of the course',
        icon: Icons.folder_copy_rounded,
      ),
    );
  }
}
