// ignore_for_file: prefer_const_constructors

import 'package:coursecenter/screens/cart_screen.dart';
import 'package:coursecenter/screens/featured_screen.dart';

import 'package:coursecenter/widgets/custome_appBar.dart';
import 'package:flutter/material.dart';

class ProgrammingLanguage extends StatelessWidget {
  const ProgrammingLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = [
      {
        'imageUrl': 'lib/assets/images/pyth.jpeg',
        'name': 'Python Programming Language'
      },
      {
        'imageUrl': 'lib/assets/images/jav.jpeg',
        'name': 'Java Programming Language'
      },
      {
        'imageUrl': 'lib/assets/images/c++.jpeg',
        'name': 'c++ Programming Language'
      },
      {
        'imageUrl': 'lib/assets/images/c#.jpeg',
        'name': 'c# Programming Language'
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
                title: const Text('Programming Courses'),
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
