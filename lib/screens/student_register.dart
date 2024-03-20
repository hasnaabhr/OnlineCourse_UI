import 'package:coursecenter/screens/student_login.dart';
import 'package:flutter/material.dart';

import '../widgets/custome_elevated_button.dart';
import '../widgets/custome_textfield.dart';

class StudentRegistration extends StatelessWidget {
  const StudentRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Student Registeration',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Your Name',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomeTextField(
                  hintText: 'Enter your Name', icon: Icons.person),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Your E-mail',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomeTextField(
                  hintText: 'Enter your Email', icon: Icons.email),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Your Phone',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomeTextField(
                  hintText: 'Enter your Phone', icon: Icons.phone),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Create Password',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
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
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomeTextField(
                  hintText: 'Enter your Password', icon: Icons.lock),
              const SizedBox(
                height: 40,
              ),
              CustomeElevatedButton(
                text: 'Register',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const StudentLogin();
                    },
                  ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
