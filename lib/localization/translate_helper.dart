import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TranslateHelper {
  TranslateHelper._();
  static updateLocale(Locale locale) {
    Get.updateLocale(locale);
  }

  static String get increment => 'increment'.tr;
  static String get decrease => 'decrease'.tr;
  static String get nextPage => 'nextPage'.tr;
}
