import 'package:get/get.dart';

class SplashController extends GetxController {
  SplashController();
  String splashInfo = "splash welcome";

  _initData() {
    update(["splash"]);
  }

  void onTap() {
  }
  void onClicked(){
    String nowStr = DateTime.now().toString();
    splashInfo = nowStr;
    update(["splash_title"]);
  }
  // @override
  //   // void onInit() {
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
