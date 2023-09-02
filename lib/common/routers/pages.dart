
import 'package:flutter_project_learn/pages/FadeBarPage/view.dart';
import 'package:flutter_project_learn/pages/NestedTabPage/index.dart';
import 'package:flutter_project_learn/pages/ResponsivePage/index.dart';
import 'package:flutter_project_learn/pages/animate_test/index.dart';
import 'package:flutter_project_learn/pages/bottomSheetPage/index.dart';
import 'package:flutter_project_learn/pages/httpget/index.dart';
import 'package:flutter_project_learn/pages/meeDu_player/index.dart';
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
      page: () =>  LoginPage(),
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
    //样式页面
    GetPage(
      name: RouteNames.fadeAppBar,
      page: () => const Fadebarpage(),
    ),
    GetPage(
      name: RouteNames.animateTest,
      page: () => const AnimateTestPage(),
    ),
    GetPage(
      name: RouteNames.meeduPlayerTest,
      page: () => const MeeduPlayerPage(),
    ),
    GetPage(
      name: RouteNames.nestedTabPage,
      page: () => const NestedtabpagePage(),
    ),
    GetPage(
      name: RouteNames.responsivePage,
      page: () => const ResponsivepagePage(),
    ),
    GetPage(
      name: RouteNames.bottomSheetPage,
      page: () => const BottomsheetpagePage(),
    ),
  ];
}
