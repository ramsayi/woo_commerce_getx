import 'package:get/get.dart';
import 'package:woo_commerce_getx/pages/system/login/index.dart';
import 'package:woo_commerce_getx/pages/system/splash/index.dart';

class RoutePages {
  // 列表
  // static List<GetPage> list = [];
  static List<GetPage> list = [
    GetPage(
      name: '/',
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: '/splash',
      page: () => const SplashPage(),
    )
  ];
}
