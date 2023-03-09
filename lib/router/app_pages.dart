
import 'package:cocotea_eco/Screen/Dashboard/dashboard_binding.dart';
import 'package:cocotea_eco/Screen/Menu/screens/home/home_screen.dart';
import 'package:cocotea_eco/router/app_routes.dart';
import 'package:get/get.dart';


class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
  ];
}
