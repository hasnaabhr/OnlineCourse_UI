// ignore_for_file: prefer_const_constructors

import 'package:coursecenter/screens/student_login.dart';
import 'package:coursecenter/widgets/custome_elevated_button.dart';
import 'package:coursecenter/widgets/custome_textfield.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        iconTheme: IconThemeData(
          color: Color(0xff251E91),
        ),
        // title: Text(
        //   'Reset password',
        //   style: TextStyle(
        //     color: Color(0xff251E91),
        //   ),
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Reset Your Password',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff251E91),
              ),
            ),
            Text(
              'Your new Password must be different from previous used passwords.',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'New Password',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomeTextField(
                hintText: 'Enter your Password', icon: Icons.lock),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Confirm Password',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomeTextField(
                hintText: 'Enter your Password', icon: Icons.lock),
            const SizedBox(
              height: 50,
            ),
            CustomeElevatedButton(
              text: 'Reset Password',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const StudentLogin();
                  },
                ));
              },
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
