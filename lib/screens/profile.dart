import 'package:coursecenter/screens/cart_screen.dart';
import 'package:coursecenter/widgets/custome_appBar.dart';
import 'package:coursecenter/widgets/roundad_image.dart';
import 'package:coursecenter/widgets/section_heading.dart';

import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Tappbar(
        title: const Text(
          'My Profile',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const CartScreen();
                    },
                  ),
                );
              },
              icon: const Icon(Icons.shopping_cart))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const RoundedImage(
                      imageUrl: 'lib/assets/images/th.jpeg',
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change profile Picture'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Divider(),
              const SizedBox(
                height: 16,
              ),
              const TSectionHeading(
                textcolor: Color(0xff251E91),
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: 16,
              ),
              ProfileMenu(
                  onPressed: () {}, title: 'Name', value: 'Coding With T'),
              ProfileMenu(
                  onPressed: () {}, title: 'Username', value: 'user123'),
              const Divider(),
              const SizedBox(
                height: 16,
              ),
              const TSectionHeading(
                textcolor: Color(0xff251E91),
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: 16,
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'ID',
                value: '45678',
                icon: Icons.copy,
              ),
              ProfileMenu(
                  onPressed: () {}, title: 'E-mail', value: 'User@gmail.com'),
              ProfileMenu(
                  onPressed: () {},
                  title: 'Phone Number',
                  value: '01222358889'),
              ProfileMenu(onPressed: () {}, title: 'Gender', value: 'Female'),
              ProfileMenu(
                  onPressed: () {},
                  title: 'Date Of birth',
                  value: '12 April, 2003'),
              const Divider(),
              const SizedBox(
                height: 16,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key,
    this.icon = Icons.arrow_back_ios,
    required this.onPressed,
    required this.title,
    required this.value,
  });
  final IconData icon;
  final VoidCallback onPressed;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16 / 1.5),
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.ellipsis,
                )),
            Expanded(
                flex: 5,
                child: Text(
                  value,
                  style: Theme.of(context).textTheme.bodyMedium,
                  overflow: TextOverflow.ellipsis,
                )),
            Expanded(
                child: Icon(
              icon,
              size: 18,
            ))
          ],
        ),
      ),
    );
  }
}
