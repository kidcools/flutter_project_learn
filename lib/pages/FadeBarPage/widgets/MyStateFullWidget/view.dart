import 'package:flutter/material.dart';
import 'package:flutter_project_learn/pages/FadeBarPage/widgets/MyStateFullWidget/controller.dart';
import 'package:get/get.dart';

class MyStateFullWidget extends StatelessWidget {
  String tag = UniqueKey().toString();

  MyStateFullWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyStateFullController>(
      id: "view",
      tag: tag,
      init: MyStateFullController(),
      builder: (controller){
        return Column(
          children: [
            Text("${controller.count}"),
          ElevatedButton(
            onPressed: (){controller.increase();},
            child: Text("click me to add 1"),
          ),
          ],
        );
      },
    );
  }
}
