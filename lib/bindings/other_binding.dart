import 'package:get/get.dart';
import '../controllers/controller.dart';

class OtherBinding with Bindings {
  @override
  void dependencies() {
    Get.put(OtherScreenController());
  }
}
