import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimateTestController extends GetxController  {
  AnimateTestController();
  late AnimationController zoomInController;
  late AnimationController zoomOutController;
  bool longPress = false;
  _initData() {
    update(["animate_test"]);
  }

  void onTap() {

  }
  void startZoomInOutAnimation() async {
   await zoomOutController.animateTo(0.02);
   await zoomOutController.animateTo(0);
  }
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
