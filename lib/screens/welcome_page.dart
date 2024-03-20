import 'package:coursecenter/screens/student_login.dart';
import 'package:flutter/material.dart';

import '../widgets/student_avatar.dart';
import 'instructor_login.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(
              height: 36,
            ),
            const Text(
              'Welcome Back!',
              style: TextStyle(
                color: Color(0xff251E91),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'If you are an instructor click on instructor avatar,or if you are a student click on student avatar',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const UserAvatar(
              url: 'lib/assets/images/inst.jpg',
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InstructorLogin()));
              },
              child: const Text(
                'Instructor',
                style: TextStyle(
                  color: Color(0xff251E91),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const UserAvatar(
              url: 'lib/assets/images/stu.jpeg',
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StudentLogin()),
                );
              },
              child: const Text(
                'Student',
                style: TextStyle(
                  color: Color(0xff251E91),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
