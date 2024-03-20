// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison, prefer_const_literals_to_create_immutables

import 'package:coursecenter/screens/certificte.dart';
import 'package:coursecenter/widgets/custome_appBar.dart';
import 'package:coursecenter/widgets/custome_elevated_button.dart';
import 'package:coursecenter/widgets/lesson_item.dart';

import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({
    super.key,
    required this.imageUrl, // Add imageUrl parameter
  });

  final String imageUrl; // Declare imageUrl variable

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage>
    with SingleTickerProviderStateMixin {
  late TabController tabcontroller;

  @override
  void initState() {
    super.initState();
    tabcontroller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Tappbar(
            title: Center(
              child: Text('Course Content'),
            ),
            leadingIcon: Icons.arrow_back_ios,
          ),
          SizedBox(
            height: 20,
          ),
          getInfo(),
          SizedBox(
            height: 20,
          ),
          if (tabcontroller != null) getTabBar(),
          getTabbbarPages(),
          SizedBox(
            height: 20,
          ),
          getFooter()
        ],
      ),
    );
  }

  Widget getTabBar() {
    if (tabcontroller == null) {
      // Return a placeholder widget if tabcontroller is null
      return SizedBox();
    }
    return TabBar(
      controller: tabcontroller,
      tabs: [
        Tab(
          child: Text(
            'Content',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
        Tab(
          child: Text(
            'Downloads',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        )
      ],
    );
  }

  Widget getTabbbarPages() {
    return Expanded(
      // Wrap TabBarView with Expanded to occupy remaining space
      child: SizedBox(
        width: double.infinity,
        child: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: tabcontroller,
          children: [getContent(), getDownloads()],
        ),
      ),
    );
  }

  Widget getContent() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => LessonItem(
              lessonImageUrl: widget.imageUrl,
            ));
  }

  Widget getDownloads() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.downloading_sharp,
          size: 20,
          color: Colors.grey.shade500,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Nothing downloaded yet',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'When you download a material,you will see them here!',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
      ],
    );
  }

  Widget getInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Course Name',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Icon(Icons.bookmark),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            getAttribute(Icons.play_circle_outline, '6 Lessons', Colors.grey),
            SizedBox(
              width: 20,
            ),
            getAttribute(Icons.schedule_outlined, '10 Hours', Colors.grey),
            SizedBox(
              width: 20,
            ),
            getAttribute(Icons.star, '4.5', Colors.yellow),
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget getAttribute(IconData icon, String info, Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: color,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            info,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget getFooter() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          SizedBox(
            width: 130,
            child: Text(
              'Complete the course?',
              style: TextStyle(
                fontSize: 12,
                color: const Color(0xff251E91),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 10), // إضافة مسافة بين العناصر
          Expanded(
            child: SizedBox(
              height: 40,
              child: CustomeElevatedButton(
                text: 'Certified',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Certificate();
                    }),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
