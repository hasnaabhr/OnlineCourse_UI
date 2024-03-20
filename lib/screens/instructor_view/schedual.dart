import 'package:coursecenter/widgets/ins_work.dart';
import 'package:flutter/material.dart';

class Schedual extends StatelessWidget {
  const Schedual({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff251E91),
      body: InstructorRoles(
          icon: Icons.schedule_rounded,
          title: 'Sessions Schedual',
          subtitle:
              'Access your class timetable online,promoting organization and punctuality in your academic schedual',
          color: Colors.deepOrange),
    );
  }
}
