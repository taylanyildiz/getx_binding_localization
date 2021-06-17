import 'package:get/get.dart';
import '../controllers/controller.dart';

class HomeScreenBinding with Bindings {
  @override
  void dependencies() {
    Get.put(HomeScreenController());
  }
}
