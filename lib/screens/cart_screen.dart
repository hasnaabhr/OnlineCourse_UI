import 'package:coursecenter/screens/featured_screen.dart';
import 'package:coursecenter/widgets/custome_appBar.dart';
import 'package:coursecenter/widgets/custome_elevated_button.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            const Column(
              children: [
                Tappbar(
                  showBackArrow: true,
                  title: Text(
                    'Cart',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 300,
            ),
            const Text(
              'Add Courses',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Your cart is empty',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomeElevatedButton(
                text: 'Browse Course',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const FeaturedScreen();
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ));
  }
}
