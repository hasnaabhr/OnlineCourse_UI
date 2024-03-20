import 'package:carousel_slider/carousel_slider.dart';
import 'package:coursecenter/widgets/circular_container.dart';
import 'package:coursecenter/widgets/featured_controller.dart';
import 'package:coursecenter/widgets/roundad_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Hslider extends StatelessWidget {
  const Hslider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FeaturedController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: const [
            RoundedImage(
              width: 300,
              height: 300,
              imageUrl: 'lib/assets/images/b1.jpg',
            ),
            RoundedImage(
              width: 300,
              height: 300,
              imageUrl: 'lib/assets/images/b2.jpg',
            ),
            RoundedImage(
              width: 250,
              height: 250,
              imageUrl: 'lib/assets/images/b3.jpg',
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < 3; i++)
                  TCircularContainer(
                    width: 20,
                    height: 4,
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? const Color(0xff251E91)
                        : Colors.grey,
                    margin: const EdgeInsets.only(right: 10),
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
