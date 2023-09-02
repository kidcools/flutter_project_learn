import 'package:flutter/material.dart';
import 'package:flutter_project_learn/common/extension/ex_widget.dart';
import 'package:get/get.dart';
import 'package:kumi_popup_window/kumi_popup_window.dart';

class PopupUtils {
  static showPopUp(BuildContext context){
    showPopupWindow(
      context,
      gravity: KumiPopupGravity.center,
      //curve: Curves.elasticOut,
      bgColor: Colors.grey.withOpacity(0.5),
      clickOutDismiss: false,
      clickBackDismiss: true,
      customAnimation: false,
      customPop: false,
      customPage: false,
      //targetRenderBox: (btnKey.currentContext.findRenderObject() as RenderBox),
      //needSafeDisplay: true,
      underStatusBar: false,
      underAppBar: true,
      offsetX:0,
      offsetY: 0,
      duration: Duration(milliseconds: 200),
      onShowStart: (pop) {
        print("showStart");
      },
      onShowFinish: (pop) {
        print("showFinish");
      },
      onDismissStart: (pop) {
        print("dismissStart");
      },
      onDismissFinish: (pop) {
        print("dismissFinish");
      },
      onClickOut: (pop){
        print("onClickOut");
      },
      onClickBack: (pop){
        print("onClickBack");
      },
      childFun: (pop) {
        return Container(
          key: GlobalKey(),
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.width/2,
          width:  MediaQuery.of(context).size.height/2,
          color: Colors.redAccent,
          child: ElevatedButton(onPressed: (){
            pop..controller?.reverse(from: 1.0).then((value) => Get.back());
          }, child: Text("close"),),
        );/*.onTap((){
          //pop.controller?.reverse(from: 1.0);
        });*/
      },
    );
  }
}