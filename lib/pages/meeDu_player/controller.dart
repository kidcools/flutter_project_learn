import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter_project_learn/common/widgets/MyVideoPlayer/controller.dart';
import 'package:get/get.dart';

class MeeduPlayerPageController extends GetxController {
  Timer? _hoverTimer;

  set hoverTimer(Timer? value) {
    _hoverTimer = value;
  }

  Timer? get hoverTimer =>
      _hoverTimer; //late MyVideoPlayerController myVideoPlayerController;
  String curPlayTag = "";
  int crossAxisCount  =4;

  int _curPage = 1;

  int get curPage => _curPage;

  MeeduPlayerPageController();
  _initData() {
    //myVideoPlayerController = MyVideoPlayerController(videoUrl: "https://v9.dious.cc/20230807/UNhpRlYY/index.m3u8" );
    update(["meedu_player"]);
    //初始化播放器
  }

  void onTap() {
  }

  @override
  void onInit() {
    super.onInit();
    _initData();
  }

  @override
  void onReady() {
    super.onReady();
  }


  @override
  void onClose() {
    super.onClose();
  }

  MyVideoPlayerController?  getControllerByTag(String tag){
    try{
      print("tag:${tag}");
      MyVideoPlayerController oldController = Get.find(tag:tag);
      return oldController;
    }catch(e){
      print(e);
      return null;
    }
  }
  /**
   * 更新 当前播放的index
   */
  void  changePlayIndex(String newplayTag) async  {
    print("当前点击：${newplayTag}");
    if(!curPlayTag.isEmpty){
      //清楚当前播放状态

      MyVideoPlayerController? oldController = getControllerByTag(curPlayTag);
      if(oldController!=null){
        await oldController.changePlayMode();
      }
      this.curPlayTag = newplayTag;
      MyVideoPlayerController? newController = getControllerByTag(curPlayTag);
      if(newController!=null){
       await newController.changePlayMode();
      }
    }else{
      this.curPlayTag = newplayTag;
      MyVideoPlayerController? myVideoPlayerController = getControllerByTag(newplayTag);
      if(myVideoPlayerController!=null){
        await myVideoPlayerController.changePlayMode();
      }
    }
  }
   void changeAxisCount(){
    if(crossAxisCount<5){
      crossAxisCount++;
    }else{
      crossAxisCount=1;
    }
    update(["meedu_player"]);
   }

   void updatePageNo(int pageNo){
    this._curPage = pageNo;
    update(["meedu_player"]);
   }

}
