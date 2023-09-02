import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_project_learn/common/models/testModel/UserInfo.dart';
import 'package:flutter_project_learn/common/models/testModel/messageTemplate.dart';

void main()  async {
  String directoryPath = Directory.current.path;
  String filePath = '$directoryPath\\lib\\data\\test.json';
  File file = File(filePath);
  String contents = file.readAsStringSync();
  var messageTemplate = MessageTemplate.fromJson(json.decode(contents));
  print("hello main ${messageTemplate.toJson()}");
  var messageApi = MessageApi();
  var data = await messageApi.getData();
  print(data);
}
class MessageApi{
   Future<UserInfo?>  getData() async{
     print("start accquare data");
     var dio = Dio();
     var response = await dio.get("http://localhost:8080/user/info");
     if(response.statusCode==200){
       var errorCode = json.decode(response.toString())['errorCode'] as int;
       if(errorCode==0){
         return UserInfo.fromJson(json.decode(response.toString())['data']);
       }else{
         return null;
       }
     }else{
       return null;
     }
   }
}