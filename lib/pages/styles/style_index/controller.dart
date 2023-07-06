import 'package:flutter_project_learn/common/i18n/translation.dart';
import 'package:flutter_project_learn/common/index.dart';
import 'package:get/get.dart';

class StyleIndexController extends GetxController {
  StyleIndexController();

  _initData() {
    update(["style_index"]);
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

  /**
   * 更换语言环境
   */
  changeLanguage() {
    var en = Translation.supportedLocales[0];
    var zh = Translation.supportedLocales[1];
    print(ConfigService.to.locale.toLanguageTag()==en.toLanguageTag());
    ConfigService.to.onLocaleUpdate(ConfigService.to.locale.toLanguageTag()==en.toLanguageTag() ? zh:en).then((value) => update(["style_index"]));

  }
  changeTheme(){
    ConfigService.to.switchThemeMode().then((value) => update(["style_index"]));
  }
  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
