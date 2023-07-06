import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class RegistPage extends GetView<RegistController> {
  const RegistPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("RegistPage"),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegistController>(
      init: RegistController(),
      id: "regist",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("regist")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
