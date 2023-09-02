import 'package:flutter/material.dart';
import 'package:flutter_project_learn/pages/FadeBarPage/widgets/MyAppBar.dart';
import 'package:flutter_project_learn/pages/FadeBarPage/widgets/text_indicator/controller.dart';
import 'package:get/get.dart';

import 'index.dart';

class Fadebarpage extends GetView<FadebarpageController> {
  const Fadebarpage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   children: [
    //     Text("FadeBarPage"),
    //     ElevatedButton(
    //         onPressed: () {
    //           controller.updateFadebar("hello milestar");
    //         },
    //         child: Text("update fadeBar")),
    //     ElevatedButton(
    //         key: controller.btnKey,
    //         onPressed: () {
    //           controller.getBtnPosiotionInfo();
    //         },
    //         child: Text("获取APPbar position 信息")),
    //     TextIndicator(
    //       ['a', 'b', 'c'],
    //       controller.textIndicatorController,
    //       tabTapCallBack: (tab) => {print(tab + "clicked")},
    //     ),
    //     ElevatedButton(onPressed: (){
    //       controller.textIndicatorController.chageTab("b");
    //     }, child: Text("切换tab"))
    //   ],
    // );
    return ListView.builder(
      itemCount: 100, // 列表项的数量
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Center(
            child: ElevatedButton(
                onPressed: () {
                  controller.updateFadebar("hello milestar");
                },
                child: Text("update fadeBar")),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FadebarpageController>(
      init: FadebarpageController(),
      id: "fadebarpage",
      builder: (_) {
        return Scaffold(
          appBar: MyAppBar(
            key: controller.headerkey,
            isShow: controller.isShow,
            centerTitle: controller.centerTitle,
          ),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
