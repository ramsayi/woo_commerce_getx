import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo/common/index.dart';

class RegisterPinController extends GetxController {
  RegisterPinController();

  // ping 文字输入控制器
  TextEditingController pinController = TextEditingController();

  // 表单 key
  GlobalKey formKey = GlobalKey<FormState>();

  // pin 触发提交
  void onPinSubmit(String val) {
    debugPrint("onPinSubmit: $val");
  }

  // 按钮提交
  void onBtnSubmit() {}

  // 按钮返回
  void onBtnBackup() {
    Get.back();
  }

  // 验证 pin
  String? pinValidator(val) {
    return val == '111111' ? null : LocaleKeys.commonMessageIncorrect.trParams({"method": "Pin"});
  }

  _initData() {
    update(["register_pin"]);
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
  }

  @override
  void onClose() {
    super.onClose();
    pinController.dispose();
  }
}
