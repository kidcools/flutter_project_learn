
import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_learn/common/extension/ex_list.dart';
import 'package:flutter_project_learn/common/extension/ex_widget.dart';
import 'package:flutter_project_learn/common/widgets/MyVideoPlayer/index.dart';
import 'package:get/get.dart';
import 'package:pager/pager.dart';
import 'index.dart';

class MeeduPlayerPage extends GetView<MeeduPlayerPageController> {
  const MeeduPlayerPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return SafeArea(child: CustomScrollView(
        slivers: [_buildGridView(),_buildPager()])
    );
  }
  Widget _buildGridView(){
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: controller.crossAxisCount, // 每行显示的item数量
        childAspectRatio: 1.3,
        mainAxisSpacing: 10, // 主轴方向（垂直方向）的间距
        crossAxisSpacing: 10,
        // item的宽高比
      ),
      itemCount: 30, // item的总数量
      itemBuilder: (BuildContext context, int index) {
        return _buildViewItem("${index}").card(radius: 5);
      },
    ).sliverPaddingHorizontal(5).sliverPaddingTop(20);
  }
  Widget _buildPager(){
    return Pager(
      currentPage: controller.curPage,
      totalPages: 5,
      onPageChanged: (page) {
        controller.updatePageNo(page);
      },
    ).paddingVertical(40).sliverToBoxAdapter();
  }
  Widget _buildViewItem(String uniqTag) {
    return [
      MouseRegion(
        onEnter:(PointerEnterEvent event) {
          controller.hoverTimer?.cancel(); // 取消之前的计时器
          controller.hoverTimer = Timer(Duration(seconds: 1), () {
            // 2秒后执行悬浮事件处理
            print("mouseEnter");
            controller.changePlayIndex(uniqTag);
          });
        },
        onExit: (PointerExitEvent event) {
          controller.hoverTimer?.cancel(); // 取消计时器
          print("mouseExit");
        },
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
          child: Container(
            color: Colors.blueGrey,
            child: MyVideoPlayer(
                uniqTag: uniqTag,
                myVideoPlayerController: MyVideoPlayerController(videoUrl: "https://img-egc.xvideos-cdn.com/videos/videopreview/b6/aa/a2/b6aaa202920a02c03fe322a45d75ca1c_169.mp4"),
              onChangeMode: (uniqTag){
                 controller.changePlayIndex(uniqTag);
              },
            ),
          ),
        ),
      ),
      Container(
        //color: Colors.black38,
        child: LayoutBuilder(builder: (BuildContext , BoxConstraints ) {
          return Text(
              'ときめき 〜アレって、とびっこ？！〜 麻倉憂 1ときめき 〜アレって、とびっこ？！〜 麻倉憂 1ときめき 〜アレって、とびっこ？！〜 麻倉憂 1',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: TextStyle(
              fontSize: BoxConstraints.maxHeight*0.2,
          ));
        },)
      ).expanded(),
    ].toColumn();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MeeduPlayerPageController>(
      init: MeeduPlayerPageController(),
      id: "meedu_player",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("meedu_player")),
          body: SafeArea(
            child: _buildView(),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              controller.changeAxisCount();
            },
            child: Icon(Icons.add), // 按钮上显示的图标
          ),
        );
      },
    );
  }
}
