import 'package:coursecenter/screens/instructor_view.dart';
import 'package:coursecenter/widgets/custome_elevated_button.dart';

import 'package:coursecenter/widgets/student_avatar.dart';
import 'package:flutter/material.dart';

import '../widgets/custome_textfield.dart';

class InstructorLogin extends StatelessWidget {
  const InstructorLogin({
    super.key,
  });

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
              SizedBox(
                height: 40,
              ),
              const UserAvatar(
                url: 'lib/assets/images/inst.jpg',
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Instructor Login',
                style: TextStyle(
                    color: Color(0xff251E91),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomeTextField(
                  hintText: 'Enter your Username', icon: Icons.email),
              const SizedBox(
                height: 20,
              ),
              const CustomeTextField(
                  hintText: 'Enter your Password', icon: Icons.lock),
              const SizedBox(
                height: 50,
              ),
              CustomeElevatedButton(
                text: 'Login',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const InstructorView();
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
