import 'package:get/get.dart';

import 'languages/en.dart';
import 'languages/tr.dart';

class Localization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'tr': tr,
      };
}
