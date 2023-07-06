import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_project_learn/common/i18n/translation.dart';
import 'package:flutter_project_learn/common/utils/Storage.dart';
import 'package:flutter_project_learn/common/values/constants.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../index.dart';


class ConfigService extends GetxService{
// 这是一个单例写法
  static ConfigService get to => Get.find();
  //获取当前的国际化区域
  Locale locale = PlatformDispatcher.instance.locale;

  PackageInfo? _platform;
  String get version => _platform?.version ?? '-';
  String get platform => _platform?.appName ?? '-';
  //当前主题模式
  final RxBool _isDarkMode= Get.isDarkMode.obs;
  bool get isDarkMode => _isDarkMode.value;

  //当前的主题
  initLocale(){
    //获取缓存的语言设置
    var languageCode = Storage().getString(Constants.storageLanguageCode);
    if(languageCode==null){return;}
    var index  = Translation.supportedLocales.indexWhere((element) => element.languageCode == languageCode);
    if(index<0) return;
    locale = Translation.supportedLocales[index];
  }

  /**
   * 更新语言环境
   */
  Future<void> onLocaleUpdate(Locale value) async{
    locale = value;
    await Get.updateLocale(value);
    Storage().setString(Constants.storageLanguageCode, value.languageCode);
  }
  // 初始化
  Future<ConfigService> init() async {
    print("configService init");
    return this;
  }

  Future<void> getPlatform() async {
    _platform = await PackageInfo.fromPlatform();
    //print("======platForm:"+_platform.toString());
  }
  Future<void> switchThemeMode() async{
    _isDarkMode.value = !_isDarkMode.value;
    String themeData = _isDarkMode.value? "dark":"light";
    Get.changeTheme(themeData=="dark"?  AppTheme.dark:AppTheme.light);
    await Storage().setString(Constants.storageThemeCode, themeData);
    // 重新载入视图，因为
    // 1 有自定义颜色
    // 2 有些视图被缓存
    //Get.offAllNamed(RouteNames.systemSplash);
  }
  /**
   * 读取缓存主题设置
   */
  void initTheme() {
    var themeCode = Storage().getString(Constants.storageThemeCode);
    _isDarkMode.value = themeCode == "dark" ? true : false;
    Get.changeTheme(
      themeCode == "dark" ? AppTheme.dark : AppTheme.light,
    );
  }

  @override
  void onReady() async{
    // TODO: implement onReady
    super.onReady();
    print("configService onready");
  }
  @override
  void onInit() {
    super.onInit();
    print("onInit--");
    getPlatform();
    initLocale();
    initTheme();
  }
}