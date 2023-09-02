import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key, this.isShow, this.centerTitle}) : super(key: key);

  //是否现实APPBar
  final bool? isShow;
  final String? centerTitle;

  @override
  Widget build(BuildContext context) {
    if (isShow ?? false) {
      return FadeInDown(
          duration:  const Duration(milliseconds: 200),
          child: AppBar(title: Text(centerTitle ?? "hello kidcools")));
    } else {
      return FadeOutUp(
        duration:  const Duration(milliseconds: 200),
        child: AppBar(title: Text(centerTitle ?? "hello kidcools")),
      );
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
