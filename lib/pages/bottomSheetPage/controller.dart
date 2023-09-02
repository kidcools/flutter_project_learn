import 'package:get/get.dart';

class BottomsheetpageController extends GetxController {
  BottomsheetpageController();
  bool  canCollapse = false;

  _initData() {
    update(["bottomsheetpage"]);
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
  void changeCollapseMode(){
     canCollapse = !canCollapse;
     print("canCollpase:${canCollapse}");
     update(['bottomsheetpage']);
  }
  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
