import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_commerce_getx/common/index.dart';

import 'index.dart';

class StylesIndexPage extends GetView<StylesIndexController> {
  const StylesIndexPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return Column(
      children: [
        // 文本
        ListTile(
          onTap: () => Get.toNamed(RouteNames.stylesText),
          title: const Text("Text 文本"),
        ),
        // 多语言
        ListTile(
          onTap: controller.onLanguageSelected,
          title: Text(
            "语言 : ${ConfigService.to.locale.toLanguageTag()}",
          ),
        ),
        // 主题样式
        ListTile(
          onTap: controller.onThemeSelected,
          title: Text("主题 : ${ConfigService.to.isDarkModel ? "Dark" : "Light"}"),
        ),
        ElevatedButton(onPressed: () {}, child: const Text("ElevatedButton")),
        FilledButton(onPressed: () {}, child: const Text("FilledButton")),
        OutlinedButton(onPressed: () {}, child: const Text("OutlinedButton")),
        TextButton(onPressed: () {}, child: const Text("TextButton")),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StylesIndexController>(
      init: StylesIndexController(),
      id: "styles_index",
      builder: (_) {
        return Scaffold(
          // appBar: AppBar(title: const Text("styles_index")),
          appBar: AppBar(title: Text(LocaleKeys.stylesTitle.tr)),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
