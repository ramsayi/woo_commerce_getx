import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:woo/common/index.dart';

class SplashController extends GetxController {
  SplashController();

  // _initData() {
  //   update(["splash"]);
  // }

  void onTap() {}

  _jumpToPage() {
    Future.delayed(const Duration(seconds: 1)).then((_) {
      if (!ConfigService.to.isAlreadyOpen) {
        Get.offAllNamed(RouteNames.main);
      } else {
        Get.offAllNamed(RouteNames.systemWelcome);
      }
    });

    // 样式配置
    // if (ConfigService.to.isAlreadyOpen) {
    //   Get.offAllNamed(RouteNames.systemWelcome);
    // } else {
    //   Get.offAllNamed(RouteNames.main);
    // }
    // 欢迎页
    // Future.delayed(const Duration(milliseconds: 0), () {
    //   Get.offAllNamed(RouteNames.systemWelcome);
    // });
    // 首页
    Get.offAllNamed(RouteNames.main);
  }

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();

    // 删除设备启动图
    FlutterNativeSplash.remove();

    _jumpToPage(); // 跳转页面
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
