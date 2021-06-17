import 'package:get/get.dart';
import '/controllers/controller.dart';

class OtherScreenController extends GetxController {
  void back() => Get.toNamed('/HomeScreen');

  final HomeScreenController _homeScreenController = Get.find();

  void decrease() {
    --_homeScreenController.value;
    update();
  }
}
