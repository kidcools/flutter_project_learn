import 'package:get/get.dart';

class LeftScrollIndicatorController extends GetxController{
  int curIndex = 0;
  /**
   * construct function
   */
  LeftScrollIndicatorController();

  _initData() {
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


  void updateView(){
    update(["view"]);
  }
}