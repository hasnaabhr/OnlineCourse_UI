import 'package:coursecenter/screens/cart_screen.dart';
import 'package:coursecenter/screens/featured_screen.dart';
import 'package:coursecenter/widgets/custome_appBar.dart';
import 'package:flutter/material.dart';

class AllCourses extends StatelessWidget {
  const AllCourses({super.key});

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
      {
        'imageUrl': 'lib/assets/images/c++.jpeg',
        'name': 'C++ programming language'
      },
      {'imageUrl': 'lib/assets/images/chi.jpeg', 'name': 'Chinese Course'},
      {'imageUrl': 'lib/assets/images/ger.jpeg', 'name': 'Germane Course'},
      {'imageUrl': 'lib/assets/images/Fron.jpeg', 'name': 'Frontend Track'},
      {
        'imageUrl': 'lib/assets/images/cyber.jpeg',
        'name': 'cyber Security Track'
      },
      {'imageUrl': 'lib/assets/images/Data.jpeg', 'name': 'Data Science Track'},
      {'imageUrl': 'lib/assets/images/fren.jpeg', 'name': 'French Course'},
      {
        'imageUrl': 'lib/assets/images/Machine .jpeg',
        'name': 'Machine Learning'
      },
      {
        'imageUrl': 'lib/assets/images/pyth.jpeg',
        'name': 'Python Programming Language'
      },
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Tappbar(
                title: const Text('All Courses'),
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
