import 'package:flutter/material.dart';
import 'package:flutter_meedu_videoplayer/meedu_player.dart';
import 'package:flutter_project_learn/common/services/wp_http.dart';
import 'package:flutter_project_learn/common/utils/Storage.dart';
import 'package:get/get.dart';

import 'common/index.dart';

class Global {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    //初始化 sp
    await Storage().init();
    await Future.wait([
      Get.putAsync<ConfigService>(() async => await ConfigService().init()),
    ]).whenComplete(() {
      print('============='+ConfigService.to.version);
    });
    //初始化DIO
    Get.put<WPHttpService>(WPHttpService());
    //初始化视频播放器
    initMeeduPlayer();
  }
}