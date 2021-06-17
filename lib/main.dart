import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_binding_localizations/route_management.dart';

import 'localization/localization.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RouteManagement.initialRoute,
      getPages: RouteManagement.routeList,
      locale: Get.locale ?? const Locale('en'),
      translations: Localization(),
    );
  }
}
