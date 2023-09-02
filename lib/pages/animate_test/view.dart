import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'index.dart';


class AnimateTestPage extends GetView<AnimateTestController>  {
 const  AnimateTestPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child:Container(
            color: Colors.transparent,
            child: ZoomOut(
              manualTrigger: true,
              animate:false,
              controller: (controller)=>this.controller.zoomOutController = controller,
              child: GestureDetector(
                onLongPress: ()=>this.controller.startZoomInOutAnimation(),
                child: Container(
                  width: Get.width/4,
                  height: Get.width/4,
                  color: Colors.brown,
                  child: Column(
                    children: [
                      //图片
                      Image.network("https://img.alicdn.com/imgextra/i4/6000000003879/O1CN01e0c4Eq1eWdC24ncT5_!!6000000003879-0-octopus.jpg",),
                      //描述
                      Text("this is titleaaaaaaaaaaa"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 20)),
        ElevatedButton(onPressed: (){
          this.controller.startZoomInOutAnimation();
           //this.controller.zoomInController.animateTo(1);
        }, child: Text("start Animation")),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnimateTestController>(
      init: AnimateTestController(),
      id: "animate_test",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("animate_test")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
