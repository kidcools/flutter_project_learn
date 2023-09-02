import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget centerWidget;

  CustomAppBar({required this.centerWidget});

  @override
  Size get preferredSize => Size.fromHeight(kMinInteractiveDimension);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.live_tv,color: Colors.redAccent,),
      //title: Text('titles'),
      flexibleSpace: Stack(
        alignment: Alignment.center,
        children: [
          // Positioned.fill(
          //   child: Container(
          //     decoration: BoxDecoration(
          //       gradient: LinearGradient(
          //         colors: [Colors.blue, Colors.green],
          //         begin: Alignment.topCenter,
          //         end: Alignment.bottomCenter,
          //       ),
          //     ),
          //   ),
          // ),
          Center(child: centerWidget),
        ],
      ),
    );
  }
}