import 'package:get/get.dart';

import 'controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    LoginController loginController = LoginController();
    Get.lazyPut<LoginController>(() => loginController);
  }
}
