import 'package:flutter/cupertino.dart';
import 'package:flutter_project_learn/common/widgets/MyVideoPlayer/controller.dart';
import 'package:get/get.dart';

import 'index.dart';

class LoginController extends GetxController {

  final state = LoginState();
  int clickedCount  = 0;
  MyVideoPlayerController? myVideoPlayerController;
  LoginController();
  // tap
  void handleTap(int index) {
    Get.snackbar(
      "标题",
      "消息",
    );
  }
  void onJumpCliced({String url = "/regist"}){
    clickedCount++;
    update(['login_count']);
    Get.toNamed(url);
  }
  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
    myVideoPlayerController = MyVideoPlayerController(videoUrl: "https://vip.ffzy-play6.com/20221023/1549_47178975/index.m3u8");
  }

  /// 在 onInit() 之后调用 1 帧。这是进入的理想场所
  @override
  void onReady() {
    super.onReady();
  }

  /// 在 [onDelete] 方法之前调用。
  @override
  void onClose() {
    super.onClose();
  }

  /// dispose 释放内存
  @override
  void dispose() {
    super.dispose();
  }
}
