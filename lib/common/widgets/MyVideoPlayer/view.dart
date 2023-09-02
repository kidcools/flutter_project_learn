import 'package:flutter/material.dart';
import 'package:flutter_meedu_videoplayer/meedu_player.dart';
import 'package:flutter_project_learn/common/extension/ex_list.dart';
import 'package:flutter_project_learn/common/extension/ex_widget.dart';
import 'package:get/get.dart';

import 'index.dart';

class MyVideoPlayer extends StatelessWidget {
  final MyVideoPlayerController myVideoPlayerController;
  late final String uniqTag;
  final Function(String uniqTag)? onChangeMode;
  MyVideoPlayer(
      {Key? key, required this.myVideoPlayerController, String? uniqTag,  this.onChangeMode})
      : super(key: key) {
    this.uniqTag = uniqTag ?? UniqueKey().toString();
    print("myVideoPlayerController${uniqTag}:created");
  }

 /* @override
  Widget build(BuildContext context) {
    return GetBuilder<MyVideoPlayerController>(
        id: "videoPlayer",
        tag: uniqTag,
        init: myVideoPlayerController,
        builder: (controller) {
          return LayoutBuilder(
            builder: (BuildContext, BoxConstraints) {
              Widget widget = !controller.playMode
                  ? Container(
                      width: BoxConstraints.maxWidth,
                      height: BoxConstraints.maxWidth * 9 / 16,
                      color: Colors.black38,
                    )
                  : MeeduVideoPlayer(
                          controller: controller.meeduPlayerController)
                      .aspectRatio(
                          aspectRatio: controller.aspectRatio > 0
                              ? controller.aspectRatio
                              : 16 / 9);
              return [
                widget,
                ElevatedButton(
                    onPressed: () {
                     *//* myVideoPlayerController!.updateVideoUrl(
                          "https://cdn77-vid.xvideos-cdn.com/hAMqeXfwADOkgdKQKE-5ig==,1691473044/videos/hls/c0/6c/03/c06c03f43e10fbdea77f4013ed96b618/hls.m3u8");*//*
                      controller.changePlayMode();
                    },
                    child: Text(controller.title))
              ].toColumn();
            },
          );
        });
  }*/
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyVideoPlayerController>(
        id: "videoPlayer",
        tag: uniqTag,
        init: myVideoPlayerController,
        builder: (controller) {
          return GestureDetector(
            onLongPress: (){
              this.onChangeMode!.call(uniqTag);
            },

            child: LayoutBuilder(
              builder: (BuildContext, BoxConstraints) {
                Widget widget = !controller.playMode
                    ? Container(
                  width: BoxConstraints.maxWidth,
                  height: BoxConstraints.maxWidth*9/16,
                  color: Colors.black38,
                )
                    : SizedBox(
                      width: BoxConstraints.maxWidth,
                      child: MeeduVideoPlayer(
                      controller: controller.meeduPlayerController)
                      .aspectRatio(
                      aspectRatio:  16/9  ),
                    );
                return [
                  widget,
                  // ElevatedButton(
                  //     onPressed: ()  {
                  //       /* myVideoPlayerController!.updateVideoUrl(
                  //           "https://cdn77-vid.xvideos-cdn.com/hAMqeXfwADOkgdKQKE-5ig==,1691473044/videos/hls/c0/6c/03/c06c03f43e10fbdea77f4013ed96b618/hls.m3u8");*/
                  //       //await controller.changePlayMode();
                  //       /**
                  //        * 执行回调
                  //        */
                  //       this.onChangeMode!.call(uniqTag);
                  //     },
                  //     child: Text(controller.title+":${uniqTag}"))
                ].toColumn();
              },
            ),
          );
        });
  }
}
