// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:coursecenter/widgets/custome_appBar.dart';
import 'package:coursecenter/widgets/custome_elevated_button.dart';
import 'package:coursecenter/widgets/custome_textfield.dart';

import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Tappbar(
                  title: Center(child: Text('CheckOut')),
                ),
                Container(
                  height: 190,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('lib/assets/images/vis.jpg')),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff251E91),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Name On Card',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomeTextField(
                  hintText: 'Name on card',
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Card Number',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomeTextField(
                  hintText: '1234 5678 9012 3456',
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Expiry date',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomeTextField(
                  hintText: 'MM/YY',
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'CVC/CVV',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomeTextField(
                  hintText: 'CVC',
                ),
                SizedBox(
                  height: 20,
                ),
                CustomeElevatedButton(
                  text: 'Complete CheckOut',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return CompleteScreen();
                    }));
                  },
                )
              ],
            ),
          ),
        ));
  }
}

// ignore: non_constant_identifier_names
Widget CompleteScreen() {
  return Card(
    child: Container(
      height: 200,
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.green.shade500,
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.done_outline,
            size: 50,
            color: Colors.green,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Pay Complete Successfully',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          )
        ],
      ),
    ),
  );
}
