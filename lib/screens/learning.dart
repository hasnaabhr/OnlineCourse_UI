// ignore_for_file: prefer_const_constructors

import 'package:coursecenter/screens/cart_screen.dart';
import 'package:coursecenter/screens/content.dart';
import 'package:coursecenter/widgets/custome_appBar.dart';
import 'package:flutter/material.dart';


class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Define a list of images and names
    List<String> images = [
      'lib/assets/images/Eng.jpeg',
      'lib/assets/images/flu.jpeg',
      'lib/assets/images/ger.jpeg'
    ];
    List<String> names = [
      'How To Speak English',
      'Basics Of Flutter',
      'Germen Basics'
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Tappbar(
        title: const Text(
          'My Courses',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          const Icon(Icons.search),
          const SizedBox(width: 15),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const CartScreen();
                }),
              );
            },
            icon: const Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 3, // Adjust the itemCount as needed
        itemBuilder: (context, index) {
          return LearningCourses(
            coursesImages: images[index], // Use different images for each item
            name: names[index], // Use different names for each item
          );
        },
      ),
    );
  }
}

class LearningCourses extends StatelessWidget {
  const LearningCourses({
    super.key,
    required this.coursesImages,
    required this.name,
  });

  final String coursesImages;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0xff251E91).withOpacity(0.70),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image(
              image: AssetImage(coursesImages), // Use lesson image URL
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Aline',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ContentPage(
                            imageUrl: coursesImages,
                          );
                        }));
                      },
                      child: Text(
                        'Go To Content',
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
