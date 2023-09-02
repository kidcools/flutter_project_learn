import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_learn/common/extension/ex_widget.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import 'controller.dart';

/**
 * 实现功能
 * 1.内部实现点击  按钮状态变换
 * 2.外部设置属性 tabs
 * 3.
 */
class TextIndicator extends GetView<TextIndicatorController> {

  final List<String> tabs;
  final TextIndicatorController? textIndicatorController;
  final int index;
  final Function? tabTapCallBack;
  // final  int width;
  // final int hight;
   TextIndicator(this.tabs,this.textIndicatorController,
      {Key? key , this.tabTapCallBack,this.index = 0})
      :super(key: key);
  Widget _buildIndicatorItem(String tab, bool isSelected){
    var item = !isSelected? Container(
        width: Get.width/3,
        child: Text(tab).align(Alignment.center)):Container(
        width: Get.width/3,
        color: Colors.green,
        child: Text(tab).align(Alignment.center));
    return GestureDetector(
      onTap: (){
        controller.onTabClick(tab);
        tabTapCallBack!(tab);
      },
      child: item,
    );
  }
  // 主视图
  Widget _buildView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: tabs
          .map((e) => _buildIndicatorItem(e, controller.selectedTab==e))
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TextIndicatorController>(
      init: textIndicatorController,
      id: "indicator",
      builder: (controller) {
        return _buildView();
      },
    );
  }
}
