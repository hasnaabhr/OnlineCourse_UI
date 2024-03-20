// ignore_for_file: prefer_const_constructors

import 'package:coursecenter/screens/reset_password.dart';
import 'package:coursecenter/screens/student_register.dart';
import 'package:coursecenter/screens/student_view.dart';

import 'package:coursecenter/widgets/student_avatar.dart';

import 'package:flutter/material.dart';

import '../widgets/custome_elevated_button.dart';
import '../widgets/custome_textfield.dart';

class StudentLogin extends StatelessWidget {
  const StudentLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              const UserAvatar(url: 'lib/assets/images/stu.jpeg'),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Student Login',
                style: TextStyle(
                    color: Color(0xff251E91),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomeTextField(
                  hintText: 'Enter your E-mail', icon: Icons.email),
              const SizedBox(
                height: 20,
              ),
              const CustomeTextField(
                  hintText: 'Enter your Password', icon: Icons.lock),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ResetPassword();
                  }));
                },
                child: Text(
                  textAlign: TextAlign.left,
                  'Forget Password ?',
                  style: TextStyle(color: Color(0xff251E91), fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomeElevatedButton(
                text: 'Login',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const StudentView();
                    },
                  ));
                },
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                'Or Sign in With.',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff251E91),
                    fontSize: 20),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        image: DecorationImage(
                            image: AssetImage('lib/assets/images/g.jpg'))),
                  ),
                  Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        image: DecorationImage(
                            image: AssetImage('lib/assets/images/x.jpg'))),
                  ),
                  Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        image: DecorationImage(
                            image: AssetImage('lib/assets/images/f.jpg'))),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Text(
                    'Don\'t Hava an account ?',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const StudentRegistration(),
                        ),
                      );
                    },
                    child: const Text(
                      ' please Register',
                      style: TextStyle(
                          color: Color(0xff251E91),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
