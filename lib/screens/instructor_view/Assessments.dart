import 'package:coursecenter/widgets/ins_work.dart';
import 'package:flutter/material.dart';

class Assessments extends StatelessWidget {
  const Assessments({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff251E91),
      body: InstructorRoles(
          icon: Icons.file_copy_sharp,
          title: 'Assessments Submission',
          subtitle:
              'Submit assignments online,receive feedback from instructors,and improve your work iteratively for better results',
          color: Colors.deepOrange),
    );
  }
}
