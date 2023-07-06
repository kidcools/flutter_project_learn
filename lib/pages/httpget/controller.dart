import 'package:flutter_project_learn/common/api/index.dart';
import 'package:flutter_project_learn/common/models/test/TestApi.dart';
import 'package:flutter_project_learn/common/services/wp_http.dart';
import 'package:get/get.dart';

class HttpgetController extends GetxController {
  HttpgetController();
  String? _data;
  String? get data => _data;
  _initData() {
    update(["httpget"]);
  }
/**
  dio 获取数据信息
 */
  void onTap() {
    WPHttpService.to.get('/').then((value)  {
      print(value);
     var testMdoel = TestApi().getData();
      _data = testMdoel.toString();
      update(["httpget"]);
    });
  }

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
