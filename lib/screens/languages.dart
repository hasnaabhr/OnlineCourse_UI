import 'package:coursecenter/screens/cart_screen.dart';
import 'package:coursecenter/screens/featured_screen.dart';
import 'package:coursecenter/widgets/custome_appBar.dart';
import 'package:flutter/material.dart';

class Languages extends StatelessWidget {
  const Languages({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = [
      {'imageUrl': 'lib/assets/images/ger.jpeg', 'name': 'Germen Language'},
      {'imageUrl': 'lib/assets/images/Eng.jpeg', 'name': 'English Language'},
      {'imageUrl': 'lib/assets/images/fren.jpeg', 'name': 'French Language'},
      {'imageUrl': 'lib/assets/images/chi.jpeg', 'name': 'Chinese Language'},
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Tappbar(
                title: const Text('Languages Courses'),
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
