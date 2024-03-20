import 'package:get/get.dart';

class FeaturedController extends GetxController {
  static FeaturedController get instance => Get.find();
  final carousalCurrentIndex = 0.obs;
  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }
}
