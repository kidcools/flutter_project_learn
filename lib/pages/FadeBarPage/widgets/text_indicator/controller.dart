import 'package:get/get.dart';

class TextIndicatorController extends GetxController{
  String selectedTab;
  TextIndicatorController(this.selectedTab);

  _initData() {
    update(["indicator"]);
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

  onTabClick(String tab) {
    selectedTab = tab;
    update(["indicator"]);
  }
  chageTab(String tab){
    selectedTab = tab;
    update(["indicator"]);
  }
}