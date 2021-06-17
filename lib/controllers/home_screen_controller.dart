import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  late int value = 0;

  void increment() {
    value++;
    update();
  }

  void nextPage() => Get.toNamed('/OtherScreen');
}
