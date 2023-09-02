import 'package:flutter/material.dart';
import 'package:flutter_project_learn/pages/FadeBarPage/widgets/MyStateFullWidget/controller.dart';
import 'package:flutter_project_learn/pages/NestedTabPage/widgets/LeftScrollIndicator/controller.dart';
import 'package:get/get.dart';

class LeftScrollIndicator extends StatelessWidget {
  String tag = UniqueKey().toString();
  //所有数据
  final List<String> items;
  final LeftScrollIndicatorController? controller;
  final Function(String curItem)? itemClickCallBack;
  LeftScrollIndicator(
      {Key? key, required this.items, this.controller, this.itemClickCallBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LeftScrollIndicatorController>(
      id: "view",
      tag: tag,
      init: controller ?? LeftScrollIndicatorController(),
      builder: (controller) {
        return LayoutBuilder(
          builder: (BuildContext, BoxConstraints) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: items
                  .map((e) => GestureDetector(
                      onTap: () {
                        controller.curIndex = items.indexOf(e);
                        controller.updateView();
                        itemClickCallBack!(items[controller.curIndex]);
                      },
                      child: items[controller.curIndex] == e
                          ? Center(
                              child: Text(
                              e,
                              style: TextStyle(color: Colors.green),
                            ))
                          : Center(child: Text(e))))
                  .toList(),
            );
          },
        );
      },
    );
  }
}
