import 'package:coursecenter/screens/connect.dart';
import 'package:coursecenter/screens/instructor_view/Assessments.dart';
import 'package:coursecenter/screens/instructor_view/lectures.dart';
import 'package:coursecenter/screens/instructor_view/materials.dart';
import 'package:coursecenter/screens/instructor_view/report.dart';
import 'package:coursecenter/screens/instructor_view/schedual.dart';
import 'package:coursecenter/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coursecenter/screens/instructor_view.dart' as instructor;

class InstructorView extends StatelessWidget {
  const InstructorView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(instructor.InstructorNavigationController());
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
                  Icons.upload,
                  color: Color(0xff251E91),
                ),
                label: 'Lectures'),
            NavigationDestination(
                icon: Icon(Icons.folder_copy_rounded, color: Color(0xff251E91)),
                label: 'Materials'),
            NavigationDestination(
                icon: Icon(Icons.report, color: Color(0xff251E91)),
                label: 'Report'),
            NavigationDestination(
                icon: Icon(Icons.schedule, color: Color(0xff251E91)),
                label: 'Schedual'),
            NavigationDestination(
                icon: Icon(Icons.chat_rounded, color: Color(0xff251E91)),
                label: 'Chat'),
            NavigationDestination(
                icon: Icon(Icons.file_copy, color: Color(0xff251E91)),
                label: 'Exams'),
            NavigationDestination(
                icon: Icon(Icons.person, color: Color(0xff251E91)),
                label: 'Profile'),
          ],
        ),
      ),
      body: Obx(
        () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class InstructorNavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const Lectures(),
    const Materials(),
    const Report(),
    const Schedual(),
    const Connect(),
    const Assessments(),
    const MyProfile(),
  ];
}
