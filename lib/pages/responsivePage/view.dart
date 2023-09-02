import 'package:flutter/material.dart';
import 'package:flutter_project_learn/common/extension/ex_widget.dart';
import 'package:flutter_project_learn/pages/responsivePage/widgets/narrow/portraitItem/view.dart';
import 'package:get/get.dart';

import 'index.dart';

class ResponsivepagePage extends StatefulWidget {
  const ResponsivepagePage({Key? key}) : super(key: key);

  @override
  State<ResponsivepagePage> createState() => _ResponsivepagePageState();
}

class _ResponsivepagePageState extends State<ResponsivepagePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return const _ResponsivepageViewGetX();
  }
}

class _ResponsivepageViewGetX extends GetView<ResponsivepageController> {
  const _ResponsivepageViewGetX({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    /*return const Center(
      child: Text("ResponsivepagePage"),
    );*/
    return LayoutBuilder(builder: (context, constrains){
      if(constrains.maxWidth>800&&constrains.maxWidth<1240){
        if(!controller.isWideMdoe){
              controller.isWideMdoe = true;
        }
        return _buildMainGraid(100,4);
      }if(constrains.maxWidth>=1240){
        if(!controller.isWideMdoe){
          controller.isWideMdoe = true;
        }
        return Center(child: _buildMainGraid(100,5,width: 1240));
      }else{
        if(controller.isWideMdoe){
          controller.isWideMdoe = false;
        }
        return _buildMainGraid(100,2);
      }
    });
  }

  Widget _buildMainGraid(int length,int row,{double? width}){
    return Container(
      width: width ?? double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: row, // 每行显示的子部件数量
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            childAspectRatio: 1/2
          ),
          itemCount: length,
          itemBuilder: (BuildContext context, int index) {
            return const PortraitItem();
          },
        ),
      ),
    );
  }
  PreferredSizeWidget _buildAppBar() {
    print("reBuildAppBar");
    return AppBar(title: LayoutBuilder(builder: (context,constrains){
    if(controller.isWideMdoe){
      return Text("wideAppbar");
    }else{
      return Text("narrowAppbar");
    }
    }),);

  }

  Widget _getCenterTitle(String title){
    return Center(child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: PortraitItem(),
    ),);
  }
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResponsivepageController>(
      init: ResponsivepageController(),
      id: "responsivepage",
      builder: (_) {
        return Scaffold(
          appBar: _buildAppBar(),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
