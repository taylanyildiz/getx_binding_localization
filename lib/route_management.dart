import 'package:get/get.dart';
import '../bindings/binding.dart';
import '../screens/screen.dart';

class RouteManagement {
  RouteManagement._();
  static const String initialRoute = '/HomeScreen';
  static final List<GetPage> routeList = [
    GetPage(
      name: '/HomeScreen',
      page: () => const HomeScreen(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: '/OtherScreen',
      page: () => const OtherScreen(),
      binding: OtherBinding(),
    )
  ];
}
