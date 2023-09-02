import 'package:flutter/material.dart';
import 'package:flutter_project_learn/pages/NestedTabPage/widgets/MyTabView/controller.dart';
import 'package:get/get.dart';

class MyTabView extends StatelessWidget {
  String tag = UniqueKey().toString();

  MyTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyTabViewController>(
      id: "view",
      tag: tag,
      init: MyTabViewController(),
      builder: (controller) {
        return Column(children: [
          Container(
            color: Theme.of(context).primaryColor,
            child: TabBar(
              controller: controller.tabController,
              tabs: controller.tabs.map((e) => Tab(text: e)).toList(),
            ),
          ),
          Expanded(
            child: NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                  // if (notification is ScrollStartNotification) {
                  //   // 滑动开始
                  //   print('滑动开始');
                  //   return true;
                  // } else if (notification is ScrollUpdateNotification) {
                  //   // 滑动更新
                  //   var dragDetails = notification.dragDetails;
                  //   if(null!=dragDetails){
                  //     if(dragDetails.delta.dx>0){
                  //       print("向右滑动");
                  //       if(controller.tabController.index==controller.tabs.length-1){//最后一页
                  //         if(controller.popScroll==true){
                  //           controller.popScroll = false;
                  //           controller.updateView();
                  //         }
                  //       }
                  //     }else{
                  //       print("向左滑动");
                  //     }
                  //   }
                  //   return false;
                  // } else if (notification is ScrollEndNotification) {
                  //   // 滑动结束
                  //   print('滑动结束');
                  //   if(controller.tabController.index==controller.tabs.length-1){//最后一页  设置为neverScrool
                  //     if(controller.popScroll==false){
                  //       controller.popScroll = true;
                  //       controller.updateView();
                  //     }
                  //   }else{
                  //     if(controller.popScroll==true){
                  //       controller.popScroll = false;
                  //       controller.updateView();
                  //     }
                  //   }
                  //   return false;
                  // }

                   return false;
                },
              child: TabBarView( //构建
                physics: controller.popScroll? NeverScrollableScrollPhysics():null,
                //physics:  NeverScrollableScrollPhysics(),
                controller: controller.tabController,
                children: controller.tabs.map((e) {
                  return  Container(
                      alignment: Alignment.center,
                      child: Text(e, textScaleFactor: 5),
                    );
                }).toList(),

              ),
            ),
          ),
        ],);
      },
    );
  }
}
