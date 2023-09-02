import 'package:flutter/material.dart';
import 'package:flutter_project_learn/common/widgets/CustomAppBar/index.dart';
import 'package:flutter_project_learn/pages/NestedTabPage/widgets/LeftScrollIndicator/view.dart';
import 'package:flutter_project_learn/pages/NestedTabPage/widgets/MyTabView/view.dart';
import 'package:get/get.dart';

import 'index.dart';

class NestedtabpagePage extends GetView<NestedtabpageController> {
  const NestedtabpagePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    /* return Flex(direction: Axis.horizontal, children: [
      Expanded( flex:1,child: LeftScrollIndicator(items: ['水果', '蔬菜', '冷链'],itemClickCallBack: (index){print(index);},)),
      Expanded( flex:4,child: Container(
        color: Colors.blueGrey,
        child: ListView.builder(
            itemCount: 100,
            itemBuilder: (BuildContext context,int index){
              print("render ${index}");
              return ListTile(
                title: Text('Item $index'),
              );
            }),
      )),
    ]);*/
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollStartNotification) {
          // 滑动开始
          print('滑动开始');
          return true;
        } else if (notification is ScrollUpdateNotification) {
          // 滑动更新
          var dragDetails = notification.dragDetails;
          if (null != dragDetails) {
            if (dragDetails.delta.dx > 0) {
              print("向右滑动");
            } else {
              print("向左滑动");
            }
          }
          return false;
        } else if (notification is ScrollEndNotification) {
          // 滑动结束
          print('滑动结束');
          return false;
        }
        return false;
      },
      child: PageView(
        //physics: NeverScrollableScrollPhysics(),
        allowImplicitScrolling: true,
        controller: controller.pageController,
        children: [
          Center(child: MyTabView()),
          Center(child: Text("pageContent2", textScaleFactor: 5)),
          Center(child: Text("pageContent3", textScaleFactor: 5)),
        ],
        onPageChanged: (index) {
          controller.changeMenuINdex(index);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NestedtabpageController>(
      init: NestedtabpageController(),
      id: "nestedtabpage",
      builder: (_) {
        return Scaffold(
          appBar: CustomAppBar(
            centerWidget: SizedBox(
              width: 300,
              child: TabBar(
                controller: controller.tabController ,
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(text: 'Tab 1'),
                  Tab(text: 'Tab 2'),
                ],
              ),
            ),
          ),
          body: SafeArea(
            child: _buildView(),
          ),
          bottomNavigationBar: BottomNavigationBar(
            // 底部导航
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.business), label: "Business"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.school), label: 'School'),
            ],
            currentIndex: controller.curIndex,
            fixedColor: Colors.blue,
            onTap: controller.onMenuItemTap,
          ),
        );
      },
    );
  }
}
