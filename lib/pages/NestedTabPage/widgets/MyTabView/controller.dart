import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyTabViewController extends GetxController
    with GetSingleTickerProviderStateMixin {
  int _curentIndex = 0;
  int get curentIndex => _curentIndex;
  late TabController _tabController;
  bool popScroll = false;
  TabController get tabController => _tabController;
  List tabs = ["新闻", "历史", "图片"];

  /**
   * construct function
   */
  MyTabViewController();

  _initData() {
    _tabController = TabController(length: tabs.length, vsync: this);
    _tabController.addListener(_handleTabChange);
    updateView();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _initData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.onClose();
  }

  void updateView() {
    update(["view"]);
  }


  void _handleTabChange() {
    if (_tabController.indexIsChanging) {
      // 页面正在切换
      print('页面切换到索引: ${_tabController.index}');
    }
  }
}
