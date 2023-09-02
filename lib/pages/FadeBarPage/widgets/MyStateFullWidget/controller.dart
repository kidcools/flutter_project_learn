import 'package:get/get.dart';

class MyStateFullController extends GetxController{
   int count = 0;
    /**
     * construct function
     */
    MyStateFullController();

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

  void increase() {
      this.count++;
      updateView();
  }
  void updateView(){
    update(["view"]);
  }
}