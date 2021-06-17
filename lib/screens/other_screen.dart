import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_binding_localizations/localization/translate_helper.dart';
import '../controllers/controller.dart';

class OtherScreen extends GetView<OtherScreenController> {
  const OtherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      builder: (OtherScreenController _) => Scaffold(
        appBar: AppBar(
          title: const Text('Other Screen'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.white,
            onPressed: () => controller.back(),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder(
                builder: (HomeScreenController homeController) => Text(
                  homeController.value.toString(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              MaterialButton(
                textColor: Colors.white,
                color: Colors.blue,
                child: Text(TranslateHelper.decrease),
                onPressed: () => controller.decrease(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
