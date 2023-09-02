import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NestedtabpageController extends GetxController with GetSingleTickerProviderStateMixin  {

  ScrollController _scrollController = ScrollController();

  ScrollController get scrollController => _scrollController;
  late PageController _pageController;

  PageController get pageController => _pageController;
  int _curIndex = 0;

  int get curIndex => _curIndex;
  TabController? _tabController;

  TabController? get tabController => _tabController;

  NestedtabpageController();
  _initData() {

  }
  @override
  void onInit() {
    super.onInit();
    _pageController = PageController(keepPage: true);
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  @override
  void onClose() {
    _scrollController.dispose();
    _pageController.dispose();
    _tabController?.dispose();
    super.onClose();
  }

  void onMenuItemTap(int index){
    _curIndex = index;
    _pageController.jumpToPage(index);
    print("menuItem click ${index}");
    updateView();
  }

  void updateView(){
    update(['nestedtabpage']);
  }
  void changeMenuINdex(int index){
    this._curIndex = index;
    updateView();
  }
}
