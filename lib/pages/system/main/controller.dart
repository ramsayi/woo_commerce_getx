import 'package:get/get.dart';
import 'package:woo_commerce_getx/common/index.dart';

class MainController extends GetxController {
  MainController();

  _initData() {
    update(["main"]);
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();

    Get.toNamed(RouteNames.systemRegister);
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
