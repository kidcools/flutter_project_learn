import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/i18n/translation.dart';
import 'common/index.dart';
import 'globle.dart';

void main()async{
 await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //初始化服
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme:  ConfigService.to.isDarkMode ? AppTheme.dark : AppTheme.light,
      initialRoute: RouteNames.login,
      getPages: RoutePages.list,
      translations: Translation(),
      localizationsDelegates: Translation.localizationsDelegates,
      supportedLocales: Translation.supportedLocales,
      fallbackLocale: Translation.fallbackLocale,
      locale: Translation.locale,
    );
  }
}

