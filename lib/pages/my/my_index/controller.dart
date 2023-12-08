import 'package:get/get.dart';
import 'package:woo/common/index.dart';

class MyIndexController extends GetxController {
  MyIndexController();

  _initData() {
    update(["my_index"]);
  }

  void onTap() {}

  void onPressed() {
    Get.toNamed(RouteNames.stylesStylesIndex);
  }

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
