import 'package:flutter/material.dart';
import 'package:flutter_project_learn/common/extension/ex_list.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return <Widget>[
      HelloWidget(),
      //Text("${controller.clickedCount}"),
      GetBuilder<LoginController>(
          id: 'login_count',
          builder: (controller) {
            return <Widget>[
              Text("${controller.clickedCount}"),
              ElevatedButton(
                  onPressed: () {
                    controller.onJumpCliced(url :"/splash");
                  },
                  child: Text("jump to splash")),

              ElevatedButton(
                  onPressed: () {
                    controller.onJumpCliced(url:"/regist");
                  },
                  child: Text("jump to form")),
              ElevatedButton(
                  onPressed: () {
                    controller.onJumpCliced(url:"/style");
                  },
                  child: Text("jump to style")),
              ElevatedButton(
                  onPressed: () {
                    controller.onJumpCliced(url:"/httpget");
                  },
                  child: Text("jump to httpget")),
            ].toColumn();
          })
    ].toColumn();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("hello kidcools login")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
