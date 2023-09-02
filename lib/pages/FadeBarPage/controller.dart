import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project_learn/pages/FadeBarPage/widgets/text_indicator/controller.dart';
import 'package:get/get.dart';

class FadebarpageController extends GetxController {
  FadebarpageController();
  //appbar 中心标题
  String centerTitle = "";
  bool isShow = true;
  GlobalKey headerkey = GlobalKey();
  GlobalKey btnKey = GlobalKey();
  late TextIndicatorController textIndicatorController;
  _initData() {
    update(["fadebarpage"]);
  }
  @override
  void onInit() {
    super.onInit();
    textIndicatorController = new TextIndicatorController("a");
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

  void updateFadebar(String centerTitle) {
    this.isShow = !this.isShow;
    this.centerTitle = centerTitle;
    update(["fadebarpage"]);
  }
  // 获取组件屏幕位置 offset
  Offset _getOffset(GlobalKey key) {
    final RenderBox? renderBox =
    key.currentContext?.findRenderObject() as RenderBox?;
    final Offset offset = renderBox?.localToGlobal(Offset.zero) ?? Offset.zero;
    return offset;
  }
  /**
   * 获取位置信息
   */
  void getPosiotionInfo() {
    print('dx: ${_getOffset(headerkey).dx}  dy:${_getOffset(headerkey).dy}');
  }
  /**
   * 获取位置信息
   */
  void getBtnPosiotionInfo() {
    print('dx: ${_getOffset(btnKey).dx}  dy:${_getOffset(btnKey).dy}');
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
