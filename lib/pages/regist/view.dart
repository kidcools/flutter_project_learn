import 'package:flutter/material.dart';
import 'package:flutter_project_learn/common/extension/ex_list.dart';
import 'package:flutter_project_learn/common/widgets/text_form.dart';
import 'package:get/get.dart';

import 'index.dart';

class RegistPage extends GetView<RegistController> {
  const RegistPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return <Widget>[
      Form(
          key: controller.globalKey,
          child: <Widget>[
            //usernameText
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormWidget(
                controller: controller.unameController,
                labelText:"请输入用户名称",
                validator: (value) {
                  return null;
                },
              ),
            ),
            SizedBox(height: 10),
            //passwordText
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormWidget(
                controller: controller.passwordController,
              ),
            ),
            SizedBox(height: 10),
            //Submit Button
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        controller.onFormSubmit();
                      },
                      child: Text("click me to regist"))),
            ),
          ].toColumn()),
    ].toColumn(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center);
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
