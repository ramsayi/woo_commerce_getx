import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_commerce_getx/common/index.dart';

import 'index.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({Key? key}) : super(key: key);

  // slider
  Widget _buildSlider() {
    return GetBuilder<WelcomeController>(
      id: "slider",
      init: controller,
      builder: (controller) => controller.items == null
          ? const SizedBox()
          : WelcomeSliderWidget(controller.items!, onPageChanged: controller.onPageChanged),
    );
  }

  // 控制栏
  Widget _buildBar() {
    return GetBuilder<WelcomeController>(
      id: "bar",
      init: controller,
      builder: (controller) {
        return <Widget>[
          // 指示标
          SliderIndicatorWidget(length: 3, currentIndex: controller.currentIndex),
        ].toRow(mainAxisAlignment: MainAxisAlignment.spaceAround);
      },
    );
  }

  // 内容页
  Widget _buildView() {
    return <Widget>[
      // slider切换
      _buildSlider(),
      // 控制栏
      _buildBar(),
    ].toColumn(mainAxisAlignment: MainAxisAlignment.spaceAround).paddingAll(AppSpace.page);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeController>(
      init: WelcomeController(),
      id: "welcome",
      builder: (_) {
        return Scaffold(
          // appBar: AppBar(title: const Text("welcome")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
