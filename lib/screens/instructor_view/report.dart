import 'package:coursecenter/widgets/ins_work.dart';
import 'package:flutter/material.dart';

class Report extends StatelessWidget {
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff251E91),
      body: InstructorRoles(
          icon: Icons.chat_sharp,
          title: 'Attendance Report',
          subtitle:
              'Track your attendance record to ensure active class participation and engagement with the course material',
          color: Colors.orangeAccent.shade700),
    );
  }
}
