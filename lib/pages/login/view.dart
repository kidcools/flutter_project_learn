import 'package:flutter/material.dart';
import 'package:flutter_meedu_videoplayer/meedu_player.dart';
import 'package:flutter_project_learn/common/extension/ex_list.dart';
import 'package:flutter_project_learn/common/extension/ex_widget.dart';
import 'package:flutter_project_learn/common/index.dart';
import 'package:flutter_project_learn/common/utils/PopupUtils.dart';
import 'package:flutter_project_learn/common/widgets/MyVideoPlayer/controller.dart';
import 'package:flutter_project_learn/common/widgets/MyVideoPlayer/view.dart';
import 'package:flutter_project_learn/pages/FadeBarPage/widgets/MyStateFullWidget/view.dart';
import 'package:flutter_project_learn/pages/FadeBarPage/widgets/my_drop_down/controller.dart';
import 'package:flutter_project_learn/pages/FadeBarPage/widgets/my_drop_down/model/MenuItem.dart';
import 'package:flutter_project_learn/pages/FadeBarPage/widgets/my_drop_down/view.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class LoginPage extends GetView<LoginController> {
  MenuItem home = MenuItem(
    text: '首页',
    icon: Icons.home,
    callback: () {
      print("首页clicked");
    },
  );
  MenuItem share = MenuItem(
      text: '分享',
      icon: Icons.share,
      callback: () {
        print("分享clicked");
      });
  MenuItem settings = MenuItem(
    text: '设置',
    icon: Icons.settings,
    callback: () {
      print("设置clicked");
    },
  );
  MenuItem logout = MenuItem(
    text: '注销',
    icon: Icons.logout,
    callback: () {
      print("注销clicked");
    },
  );
  String uniqKey = UniqueKey().toString();
  LoginPage({Key? key}) : super(key: key);
  List<MenuItem> getMenuItems() {
    return [home, share, settings];
  }

  List<MenuItem> getFooterItems() {
    return [logout];
  }

  // 主视图
  Widget _buildView() {
    return SingleChildScrollView(
      child: <Widget>[
        HelloWidget(),
        //Text("${controller.clickedCount}"),
        GetBuilder<LoginController>(
            id: 'login_count',
            builder: (controller) {
              return <Widget>[
                Text("${controller.clickedCount}").paddingAll(10),
                ElevatedButton(
                        onPressed: () {
                          controller.onJumpCliced(url: "/splash");
                        },
                        child: Text("jump to splash"))
                    .paddingAll(10),
                ElevatedButton(
                        onPressed: () {
                          controller.onJumpCliced(url: "/regist");
                        },
                        child: Text("jump to regist"))
                    .paddingAll(10),
                ElevatedButton(
                        onPressed: () {
                          controller.onJumpCliced(url: "/style");
                        },
                        child: Text("jump to style"))
                    .paddingAll(10),
                ElevatedButton(
                        onPressed: () {
                          controller.onJumpCliced(url: "/httpget");
                        },
                        child: Text("jump to httpget"))
                    .paddingAll(10),
                ElevatedButton(
                        onPressed: () {
                          controller.onJumpCliced(url: RouteNames.fadeAppBar);
                        },
                        child: Text("jump to fadeAppBar"))
                    .paddingAll(10),
                ElevatedButton(
                        onPressed: () {
                          controller.onJumpCliced(url: RouteNames.animateTest);
                        },
                        child: Text("jump to animateTest"))
                    .paddingAll(10),
                ElevatedButton(
                    onPressed: () {
                      controller.onJumpCliced(url: RouteNames.meeduPlayerTest);
                    },
                    child: Text("jump to meeduPlayer"))
                    .paddingAll(10),
                [
                  MyDropDown(
                    myDropDownController: MyDropDownController(),
                    dropDownType: MyDropDownType.iconDropDown,
                    iconMenuItems: getMenuItems(),
                    iconMenuItemsFooter: getFooterItems(),
                  ),
                  MyDropDown(myDropDownController: MyDropDownController())
                ]
                    .toRow(mainAxisAlignment: MainAxisAlignment.spaceAround)
                    .paddingAll(10),
                //MyVideoPlayer(myVideoPlayerController: controller.myVideoPlayerController!),
                ElevatedButton(
                    onPressed: () {
                     PopupUtils.showPopUp(Get.context!);
                    },
                    child: Text("showPopUP")),
                MyStateFullWidget(),
                MyStateFullWidget(),
                 ElevatedButton(
                    onPressed: () {
                      controller.onJumpCliced(url: RouteNames.nestedTabPage);
                    },
                    child: Text("jump to NestedTabPage"))
                    .paddingAll(10),
                ElevatedButton(
                    onPressed: () {
                      controller.onJumpCliced(url: RouteNames.responsivePage);
                    },
                    child: Text("jump to responsivePage"))
                    .paddingAll(10),
                ElevatedButton(
                    onPressed: () {
                      controller.onJumpCliced(url: RouteNames.bottomSheetPage);
                    },
                    child: Text("jump to bottomSheetPage"))
                    .paddingAll(10),
              ].toColumn();
            })
      ].toColumn(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("hello kidcools login")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
