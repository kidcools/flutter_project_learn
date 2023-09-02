import 'package:get/get.dart';

class ResponsivepageController extends GetxController {
  bool isWideMdoe = false;
  ResponsivepageController();

  _initData() {
    update(["responsivepage"]);
  }
  void updateView(){
    update(["responsivepage"]);
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

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
