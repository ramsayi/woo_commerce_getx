import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woo_commerce_getx/common/index.dart';

import 'index.dart';

class TextPage extends GetView<TextController> {
  const TextPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return ListView(
      children: [
        const ListTile(title: TextWidget(text: "text")),
        const ListTile(title: TextWidget.title1("title1")),
        const ListTile(title: TextWidget.title2("title2")),
        const ListTile(title: TextWidget.title3("title3")),
        const ListTile(title: TextWidget.body1("body1")),
        const ListTile(title: TextWidget.body2("body2")),
        const ListTile(title: TextWidget.body3("body3")),
        ListTile(title: TextWidget.button(text: "button",)),
        const ListTile(title: TextWidget.navigation(text: "navigation")),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TextController>(
      init: TextController(),
      id: "text",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("text")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
