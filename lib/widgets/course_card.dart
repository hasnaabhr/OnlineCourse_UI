// ignore_for_file: prefer_const_constructors

import 'package:coursecenter/screens/payment.dart';
import 'package:coursecenter/widgets/roundad_image.dart';
import 'package:coursecenter/widgets/rounded_container.dart';
import 'package:flutter/material.dart';

class CoursesCard extends StatelessWidget {
  const CoursesCard(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.onCardClicked});
  final String imageUrl;
  final String name;
  final VoidCallback onCardClicked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCardClicked,
      child: Container(
        width: 200 - 88,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Column(
          children: [
            TRoundedContainer(
              height: 200 - 88,
              padding: const EdgeInsets.all(4),
              child: RoundedImage(
                fit: BoxFit
                    .cover, // هنا يتم تعيين التوسيع للصورة لتغطية المساحة المتاحة
                width:
                    double.infinity, // عرض الصورة يمتد على كامل المساحة المتاحة
                height: 500,
                imageUrl: imageUrl,
                applyImageRadius: false,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: Theme.of(context).textTheme.labelLarge!.apply(
                        color: Color(0xff251E91),
                        fontWeightDelta: 3,
                        fontSizeFactor: 0.9),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$45',
                        style: TextStyle(
                            color: Color(0xff251E91),
                            fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PaymentScreen();
                          }));
                        },
                        child: Text(
                          textAlign: TextAlign.center,
                          'Enroll Now',
                          style: TextStyle(
                            color: Color(0xff251E91),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    indent: 10,
                    endIndent: 10,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Dr.Hasnaa',
                        style: TextStyle(
                          color: Color(0xff251E91),
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: Colors.black.withOpacity(0.1),
    spreadRadius: 7,
    offset: const Offset(0, 2),
    blurRadius: 50,
  );
  static final horizontalProductShadow = BoxShadow(
    color: Colors.black.withOpacity(0.1),
    spreadRadius: 7,
    offset: const Offset(0, 2),
    blurRadius: 50,
  );
}
/*

*/