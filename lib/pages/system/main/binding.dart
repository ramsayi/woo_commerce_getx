import 'package:get/get.dart';
import 'package:woo/pages/index.dart';

/// 主界面依赖
class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<CartIndexController>(() => CartIndexController());
    Get.lazyPut<MsgIndexController>(() => MsgIndexController());
    Get.lazyPut<MyIndexController>(() => MyIndexController());
    Get.lazyPut<MainController>(() => MainController());
  }
}