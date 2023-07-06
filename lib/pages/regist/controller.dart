import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistController extends GetxController {
  RegistController();
  String? _username;
  String? _password;
  //form 全局key
  GlobalKey globalKey = GlobalKey<FormState>();
  TextEditingController unameController = TextEditingController(text: "hello miles");
  TextEditingController passwordController = TextEditingController(text: "nothing");

  _initData() {
    update(["regist"]);
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
    unameController.dispose();
    passwordController.dispose();
  }

  /**
   * 点击提交按钮回调
   */
  void onFormSubmit() {
    FormState currentState = globalKey.currentState as FormState;
    if(currentState.validate()){
      _username = unameController.value.text;
      _password = passwordController.value.text;
      print(_username!+" 123 "+_password!);
    }

  }
}
