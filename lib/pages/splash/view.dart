import 'package:flutter/material.dart';
import 'package:flutter_project_learn/common/extension/index.dart';
import 'package:get/get.dart';

import 'index.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  // 主视图
  // Widget _buildView() {
  //   return Column(
  //     children: [
  //       GetBuilder<SplashController>(
  //             id:"splash_title",
  //             builder: (_){
  //           return Center(
  //             child: Text(controller.splashInfo),
  //           );
  //       }),
  //       ElevatedButton(onPressed: ()=>{
  //         controller.onClicked()
  //       }, child: Text("Clicked me to update"))
  //     ],
  //   );
  // }
  Widget _buildView(){
    return <Widget>[
      GetBuilder<SplashController>(id:'splash_title',builder: (_)=>Center(child: Text("${_.splashInfo}"),)),
      ElevatedButton(onPressed: ()=>controller.onClicked(), child: Text("Click me to update"))
    ].toColumn(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      id: "splash",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("splash")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
