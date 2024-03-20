import 'package:coursecenter/screens/cart_screen.dart';
import 'package:coursecenter/screens/featured_screen.dart';
import 'package:coursecenter/widgets/custome_appBar.dart';
import 'package:flutter/material.dart';

class AiCourses extends StatelessWidget {
  const AiCourses({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = [
      {
        'imageUrl': 'lib/assets/images/Machine .jpeg',
        'name': 'Machine Learning'
      },
      {'imageUrl': 'lib/assets/images/Data.jpeg', 'name': 'Data Science'},
      {'imageUrl': 'lib/assets/images/Ai.jpeg', 'name': 'Ai'},
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Tappbar(
                title: const Text('Ai Courses'),
                actions: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const CartScreen();
                        }),
                      );
                    },
                    icon: const Icon(
                      Icons.shopping_cart,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: GridLayout(items: items),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
