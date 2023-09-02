import 'dart:html';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_learn/common/widgets/CustomAppBar/index.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'index.dart';

class BottomsheetpagePage extends GetView<BottomsheetpageController> {
  const BottomsheetpagePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: _buildCustomScrollView(true),
        ),
        Expanded(
          flex: 1,
          child: _buildCustomScrollView(false),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomsheetpageController>(
      init: BottomsheetpageController(),
      id: "bottomsheetpage",
      builder: (_) {
        return Scaffold(
          //appBar: CustomAppBar(centerWidget: const Text("bottomsheetpage")),
          body: SafeArea(
            child: _buildView(),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              controller.changeCollapseMode();
            },
            child: Center(
              child: Text("${controller.canCollapse ? "暂停" : "播放中"}"),
            ),
          ),
        );
      },
    );
  }

  Widget _buildCustomScrollView(bool withHeader) {
    return CustomScrollView(
      slivers: [
        withHeader
            ? SliverPersistentHeader(
                delegate: _CustomHeaderDelegate(controller),
                pinned: true,
              )
            : Container().sliverBox,
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(title: Text('Item $index')),
            childCount: 100,
          ),
        ),
      ],
    );
  }
}

class _CustomHeaderDelegate extends SliverPersistentHeaderDelegate {
  final BottomsheetpageController bottomsheetpageController;
  double? height;
  _CustomHeaderDelegate(this.bottomsheetpageController);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return GetBuilder<BottomsheetpageController>(
        init: bottomsheetpageController,
        id: "customHeader",
        builder: (controller) {
          return LayoutBuilder(
            builder: (BuildContext, BoxConstraints) {
              //this.height = BoxConstraints.maxWidth*9/16;
              return Container(
                color: Colors.blue,
                height: BoxConstraints.maxHeight,
                child: GestureDetector(
                  onTap: () {
                    controller.changeCollapseMode();
                  },
                  child: Center(
                      child: ExtendedImage.network(
                          "https://img.alicdn.com/imgextra/i2/O1CN01jH9w4F1sEDtCgpH3r_!!6000000005734-0-tps-846-472.jpg")),
                ),
              );
            },
          );
        } //child: null,
        );
  }

  @override
  double get maxExtent{
    return  MediaQuery.of(Get.context!).size.width*7/16;
  }

  @override
  double get minExtent {
    var controller = Get.find<BottomsheetpageController>();
    if (controller.canCollapse) {
      return 50;
    } else {
      return MediaQuery.of(Get.context!).size.width*7/16;
    }
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    var controller = Get.find<BottomsheetpageController>();
    if (controller.canCollapse == false) {
      return true;
    } else {
      return false;
    }
  }
}
