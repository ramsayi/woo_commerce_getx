import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:woo_commerce_getx/common/index.dart';

class SplashController extends GetxController {
  SplashController();

  _initData() {
    FlutterNativeSplash.remove(); // 删除设备启动图
    update(["splash"]);
  }

  void onTap() {}

  _jumpToPage() {
    // 欢迎页
    Future.delayed(const Duration(milliseconds: 100), () {
      Get.offAllNamed(RouteNames.systemWelcome);
    });
  }

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();

    _jumpToPage(); // 跳转到欢迎页
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
