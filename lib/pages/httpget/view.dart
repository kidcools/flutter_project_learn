import 'package:flutter/material.dart';
import 'package:flutter_project_learn/common/extension/ex_list.dart';
import 'package:get/get.dart';

import 'index.dart';

class HttpgetPage extends GetView<HttpgetController> {
  const HttpgetPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return <Widget>[
      Text('${controller.data}'),
      Container(height: 10,),
      ElevatedButton(onPressed: ()=>controller.onTap(), child: Text("acquireData"))
    ].toColumn(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HttpgetController>(
      init: HttpgetController(),
      id: "httpget",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("httpget")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
