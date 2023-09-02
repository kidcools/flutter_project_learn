import 'package:flutter/material.dart';

class MenuItem {
  final String text;
  final IconData icon;
  final Function? callback;
  const MenuItem({
    required this.text,
    required this.icon,
    this.callback,
  });

}