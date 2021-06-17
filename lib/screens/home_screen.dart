import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_binding_localizations/localization/translate_helper.dart';
import '../controllers/controller.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      builder: (HomeScreenController _) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                controller.value.toString(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              MaterialButton(
                onPressed: () => controller.increment(),
                child: Text(TranslateHelper.increment),
                textColor: Colors.white,
                color: Colors.blue,
              ),
              const SizedBox(height: 20.0),
              MaterialButton(
                onPressed: () => controller.nextPage(),
                child: Text(TranslateHelper.nextPage),
                textColor: Colors.white,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
