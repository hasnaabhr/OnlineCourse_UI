import 'package:coursecenter/screens/cart_screen.dart';
import 'package:coursecenter/widgets/custome_appBar.dart';
import 'package:coursecenter/widgets/search_field.dart';

import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Tappbar(
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
                      icon: const Icon(Icons.shopping_cart),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 300,
            ),
            const Search_field()
          ],
        ),
      ),
    );
  }
}
