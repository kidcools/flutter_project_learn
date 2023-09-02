import 'package:flutter/material.dart';
import 'package:flutter_project_learn/pages/FadeBarPage/widgets/my_drop_down/model/MenuItem.dart';
import 'package:get/get.dart';

class MyDropDownController extends GetxController{
  String? selectedValue;
  String? uniqTag;
  MyDropDownController({this.selectedValue,this.uniqTag}){
    print("MyDropDownController created${uniqTag}");
  }

  _initData() {
    update(["dropDown"]);
  }
  updateSelectedValue(Map<String,String> kv,String?  value){
    this.selectedValue = value;
    update(["dropDown"]);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _initData();
  }
  @override
  void onReady() {
    super.onReady();
  }

  void onChanged(MenuItem item) {
    item.callback!();
    update(['dropDown']);
  }
}