
import 'package:flutter_project_learn/pages/httpget/index.dart';
import 'package:flutter_project_learn/pages/regist/index.dart';
import 'package:flutter_project_learn/pages/styles/style_index/index.dart';
import 'package:flutter_project_learn/pages/system/main/index.dart';
import 'package:get/get.dart';

import '../../pages/login/index.dart';
import '../../pages/splash/index.dart';
import 'index.dart';

class RoutePages {
  // 列表
  // static List<GetPage> list = [];
  static List<String> history = [];
  static List<GetPage> list = [
    //登录页面
    GetPage(
      name: RouteNames.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    //首页欢迎页面
     GetPage(
      name: RouteNames.splash,
      page: () => const SplashPage(),
      //binding: LoginBinding(),
    ),
    GetPage(
      name: RouteNames.regist,
      page: () => const RegistPage(),
    ),
    //系统首页
      GetPage(
      name: RouteNames.systemMain,
      page: () => const MainPage(),
    ),
    //样式页面
    GetPage(
      name: RouteNames.style,
      page: () => const StyleIndexPage(),
    ),
    //样式页面
    GetPage(
      name: RouteNames.httpget,
      page: () => const HttpgetPage(),
    ),
  ];
}
