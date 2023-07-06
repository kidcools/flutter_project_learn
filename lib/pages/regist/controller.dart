import 'package:get/get.dart';

class RegistController extends GetxController {
  RegistController();

  _initData() {
    update(["regist"]);
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
