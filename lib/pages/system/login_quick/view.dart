import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_commerce_getx/common/index.dart';
import 'package:woo_commerce_getx/pages/index.dart';

import 'index.dart';

class LoginQuickPage extends GetView<LoginQuickController> {
  const LoginQuickPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return <Widget>[
      // logo
      const ImageWidget.asset(AssetsImages.logo_2Png, width: 100, height: 100).paddingBottom(22),
      // 标题1
      TextWidget.title2("Let's Sign You In", color: AppColors.onPrimary).paddingBottom(10),
      // 标题2
      TextWidget.body2("Welcome back, you've been missed!", color: AppColors.onPrimary).paddingBottom(55),

      // 表单
      <Widget>[
        // username
        TextWidget.body1("Username or Email", color: AppColors.secondary)
            .paddingBottom(AppSpace.listRow)
            .paddingTop(20),
        // username input
        InputWidget.iconTextFilled(IconWidget.icon(Icons.person, color: AppColors.secondary))
            .paddingBottom(AppSpace.listRow * 2),
        // password
        TextWidget.body1("Password", color: AppColors.secondary).paddingBottom(AppSpace.listRow),
        // password input
        InputWidget.iconTextFilled(IconWidget.icon(Icons.lock_outline, color: AppColors.secondary))
            .paddingBottom(AppSpace.listRow * 2),

        // 登录按钮
        ButtonWidget.primary(
          "Sign In",
          backgroundColor: const Color(0xFFFD8700),
          borderRadius: 18,
          onTap: () {
            Get.to(const StylesIndexPage());
          },
        ).tight(width: double.infinity, height: 57).paddingBottom(20),

        // 注册
        <Widget>[
          // 文字
          TextWidget.body1("Don't have an account? ", color: AppColors.secondary).paddingRight(AppSpace.listItem),
          // 注册按钮
          ButtonWidget.text(
            "Sign Up",
            textColor: const Color(0xFFFD8700),
            textWeight: FontWeight.bold,
            onTap: () {},
          )
        ].toRow(mainAxisAlignment: MainAxisAlignment.center),
      ].toColumn(crossAxisAlignment: CrossAxisAlignment.start).paddingAll(20).card(color: Colors.white, radius: 35),
    ].toColumn(mainAxisAlignment: MainAxisAlignment.center).paddingHorizontal(15);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginQuickController>(
      init: LoginQuickController(),
      id: "login_quick",
      builder: (_) {
        return Scaffold(
          backgroundColor: AppColors.primary,
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
