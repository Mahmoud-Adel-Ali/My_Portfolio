import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktop = 1200;
  static const double tablet = 750;
  static const double mobile = 500;

  static late double width, height;
  static init(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}
