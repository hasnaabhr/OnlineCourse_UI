// ignore_for_file: prefer_const_constructors, unnecessary_null_comparison, prefer_const_literals_to_create_immutables

import 'package:coursecenter/screens/cart_screen.dart';
import 'package:coursecenter/screens/payment.dart';
import 'package:coursecenter/widgets/custome_appBar.dart';
import 'package:coursecenter/widgets/custome_elevated_button.dart';
import 'package:coursecenter/widgets/lesson_item.dart';

import 'package:flutter/material.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({
    super.key,
    required this.imageUrl,
    required this.courseName,
  });

  final String imageUrl;
  final String courseName;

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails>
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Tappbar(
                title: Center(
                  child: Text('Course Details'),
                ),
                leadingIcon: Icons.arrow_back_ios,
              ),
              Image(
                image: AssetImage(widget.imageUrl),
                width: 400,
                height: 300,
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
        ),
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
            'Lessons',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ),
        Tab(
          child: Text(
            'Exercises',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        )
      ],
    );
  }

  Widget getTabbbarPages() {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabcontroller,
        children: [getLessons(), getExercises()],
      ),
    );
  }

  Widget getLessons() {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) => LessonItem(
              lessonImageUrl: widget.imageUrl,
            ));
  }

  Widget getExercises() {
    return Center(
      child: Text(
        'Exercises Comming Soon',
        style: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
      ),
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'About Course',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Courses are structured programs of study designed to provide individuals with knowledge and skills in a specific subject area or field of interest.',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            )
          ],
        )
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
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: 180,
            height: 50,
            child: CustomeElevatedButton(
              text: 'Add to cart',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CartScreen();
                }));
              },
            ),
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
              width: 180,
              height: 50,
              child: CustomeElevatedButton(
                text: 'Pay Now',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PaymentScreen();
                  }));
                },
              )),
        ],
      ),
    );
  }
}
