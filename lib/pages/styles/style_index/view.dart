import 'package:flutter/material.dart';
import 'package:flutter_project_learn/common/extension/ex_list.dart';
import 'package:flutter_project_learn/common/index.dart';
import 'package:get/get.dart';

import 'index.dart';

class StyleIndexPage extends GetView<StyleIndexController> {
  const StyleIndexPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return <Widget>[
      ListTile(
          onTap: ()=>controller.changeLanguage(),
          title: Text('语言: ${ConfigService.to.locale.toLanguageTag()}')),
      ListTile(onTap: ()=>controller.changeTheme(),
          title:Text("主题:${ConfigService.to.isDarkMode?"dark":"light"}")
      )
    ].toColumn();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StyleIndexController>(
      init: StyleIndexController(),
      id: "style_index",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("style_index")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
