import 'package:coursecenter/screens/cart_screen.dart';
import 'package:coursecenter/screens/featured_screen.dart';

import 'package:coursecenter/widgets/custome_appBar.dart';
import 'package:flutter/material.dart';

class Tracks extends StatelessWidget {
  const Tracks({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = [
      {'imageUrl': 'lib/assets/images/flu.jpeg', 'name': 'Flutter Track'},
      {
        'imageUrl': 'lib/assets/images/cyber.jpeg',
        'name': 'Cyber Security Tracks'
      },
      {'imageUrl': 'lib/assets/images/back.jpeg', 'name': 'Backend Track'},
      {'imageUrl': 'lib/assets/images/Fron.jpeg', 'name': 'Frontend Track'},
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Tappbar(
                title: const Text('Tracks Courses'),
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
                padding: const EdgeInsets.all(2.0),
                child: GridLayout(items: items),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
