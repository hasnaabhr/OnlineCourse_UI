// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors

import 'package:coursecenter/screens/ai_courses_page.dart';
import 'package:coursecenter/screens/all_courses.dart';
import 'package:coursecenter/screens/course_details.dart';
import 'package:coursecenter/screens/languages.dart';
import 'package:coursecenter/screens/programming_language.dart';
import 'package:coursecenter/screens/tracks.dart';
import 'package:flutter/material.dart';

import 'package:coursecenter/widgets/course_card.dart';
import 'package:coursecenter/widgets/home_appbar.dart';
import 'package:coursecenter/widgets/primary_header_container.dart';
import 'package:coursecenter/widgets/section_heading.dart';
import 'package:coursecenter/widgets/slider.dart';
import 'package:coursecenter/widgets/verticle_image_text.dart';
import 'package:get/get.dart';

class FeaturedScreen extends StatelessWidget {
  const FeaturedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = [
      {
        'imageUrl': 'lib/assets/images/jav.jpeg',
        'name': 'Java Programming language'
      },
      {'imageUrl': 'lib/assets/images/flu.jpeg', 'name': 'Flutter Track'},
      {'imageUrl': 'lib/assets/images/Eng.jpeg', 'name': 'English Course'},
      {'imageUrl': 'lib/assets/images/Ai.jpeg', 'name': 'Ai Course'},
      {'imageUrl': 'lib/assets/images/ger.jpeg', 'name': 'Germane Course'},
      {'imageUrl': 'lib/assets/images/Fron.jpeg', 'name': 'Frontend Track'},
      {'imageUrl': 'lib/assets/images/back.jpeg', 'name': 'Backend Track'},
      {
        'imageUrl': 'lib/assets/images/c#.jpeg',
        'name': 'C# programming language'
      },
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Add some spacing
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  const Appbar(),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const TSectionHeading(
                          title: 'Popular Categories',
                          textcolor: Colors.white,
                          showActionButton: false,
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 150,
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (_, index) {
                                return Center(
                                  child: VerticalImageText(
                                    image: index == 0
                                        ? 'lib/assets/images/AI.jpg'
                                        : index == 1
                                            ? 'lib/assets/images/L.jpg'
                                            : index == 2
                                                ? 'lib/assets/images/PL.jpg'
                                                : 'lib/assets/images/AI2.jpg',
                                    title: index == 0
                                        ? 'Aartificial intelligence'
                                        : index == 1
                                            ? 'different languages'
                                            : index == 2
                                                ? 'Programming languages'
                                                : 'Programming Fields',
                                    onTap: index == 0
                                        ? () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return const AiCourses();
                                            }));
                                          }
                                        : index == 1
                                            ? () {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return const Languages();
                                                }));
                                              }
                                            : index == 2
                                                ? () {
                                                    Navigator.push(context,
                                                        MaterialPageRoute(
                                                            builder: (context) {
                                                      return ProgrammingLanguage();
                                                    }));
                                                  }
                                                : () {
                                                    Navigator.push(context,
                                                        MaterialPageRoute(
                                                            builder: (context) {
                                                      return Tracks();
                                                    }));
                                                  },
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Hslider(),
                  const SizedBox(
                    height: 20,
                  ),
                  TSectionHeading(
                    textcolor: Color(0xff251E91),
                    title: 'Popular Courses',
                    onPressed: () => Get.to(() => AllCourses()),
                  ),
                  GridLayout(items: items),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GridLayout extends StatelessWidget {
  const GridLayout({
    super.key,
    required this.items,
    this.mainAxisExtent = 288,
  });
  final List<Map<String, dynamic>> items;
  final double mainAxisExtent;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: items.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          mainAxisExtent: mainAxisExtent),
      itemBuilder: (_, index) => CoursesCard(
        imageUrl: items[index]['imageUrl'],
        name: items[index]['name'],
        onCardClicked: () {
          // Navigate to CourseDetails and pass data
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CourseDetails(
                imageUrl: items[index]['imageUrl'],
                courseName: items[index]['name'],
              ),
            ),
          );
        },
      ),
    );
  }
}
