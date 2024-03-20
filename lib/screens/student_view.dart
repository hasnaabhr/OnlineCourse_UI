import 'package:coursecenter/screens/connect.dart';
import 'package:coursecenter/screens/featured_screen.dart';
import 'package:coursecenter/screens/learning.dart';
import 'package:coursecenter/screens/profile.dart';
import 'package:coursecenter/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coursecenter/screens/student_view.dart' as student;

class StudentView extends StatelessWidget {
  const StudentView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(student.StudentNavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Icons.star,
                  color: Color(0xff251E91),
                ),
                label: 'Featured'),
            NavigationDestination(
                icon: Icon(Icons.search, color: Color(0xff251E91)),
                label: 'Search'),
            NavigationDestination(
                icon: Icon(Icons.stop_circle, color: Color(0xff251E91)),
                label: 'My Learning'),
            NavigationDestination(
                icon: Icon(Icons.person, color: Color(0xff251E91)),
                label: 'My Profile'),
            NavigationDestination(
                icon: Icon(Icons.chat_bubble_outline_outlined,
                    color: Color(0xff251E91)),
                label: 'Connect'),
          ],
        ),
      ),
      body: Obx(
        () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class StudentNavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const FeaturedScreen(),
    const SearchScreen(),
    const LearningScreen(),
    const MyProfile(),
    const Connect(),
  ];
}
