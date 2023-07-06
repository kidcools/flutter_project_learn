import 'package:flutter_project_learn/common/models/test/TestApi.dart';
import 'package:flutter_project_learn/common/services/wp_http.dart';

class TestApi{
  Future<TestModel> getData() async{
    var response = await WPHttpService.to.get("/");
    return TestModel.fromJson(response.data);

  }
}