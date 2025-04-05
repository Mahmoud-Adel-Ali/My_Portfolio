import 'package:flutter/material.dart';

import '../../constants.dart';
import 'app_colors.dart';
import 'size_config.dart';

abstract class AppStyles {
  static TextStyle medium14(BuildContext context) => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: getResponsiveFontsize(context, fontsize: 14),
        fontFamily: Constants.manropeFontFamily,
        color: AppColors.white,
      );

  static TextStyle medium16Inter(BuildContext context) => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: getResponsiveFontsize(context, fontsize: 16),
        fontFamily: Constants.interFontFamily,
        color: AppColors.white,
      );

  static TextStyle medium16Manrope(BuildContext context) => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: getResponsiveFontsize(context, fontsize: 16),
        fontFamily: Constants.manropeFontFamily,
        color: AppColors.white,
      );

  static TextStyle semiBold16(BuildContext context) => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: getResponsiveFontsize(context, fontsize: 16),
        fontFamily: Constants.manropeFontFamily,
        color: AppColors.white,
      );

  static TextStyle bold16(BuildContext context) => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: getResponsiveFontsize(context, fontsize: 16),
        fontFamily: Constants.manropeFontFamily,
        color: AppColors.black,
      );

  static TextStyle regular18(BuildContext context) => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: getResponsiveFontsize(context, fontsize: 18),
        fontFamily: Constants.manropeFontFamily,
        color: AppColors.grey,
      );

  static TextStyle medium32(BuildContext context) => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: getResponsiveFontsize(context, fontsize: 32),
        fontFamily: Constants.manropeFontFamily,
        color: AppColors.white,
      );

  static TextStyle regular32(BuildContext context) => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: getResponsiveFontsize(context, fontsize: 32),
        fontFamily: Constants.bebasNeueFontFamily,
        color: AppColors.white,
      );

  static TextStyle regular40(BuildContext context) => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: getResponsiveFontsize(context, fontsize: 40),
        fontFamily: Constants.bebasNeueFontFamily,
        color: AppColors.white,
      );

  static TextStyle regular65(BuildContext context) => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: getResponsiveFontsize(context, fontsize: 65),
        fontFamily: Constants.bebasNeueFontFamily,
        color: AppColors.white,
      );

  static double getResponsiveFontsize(BuildContext context,
      {required double fontsize}) {
    double scaleFactor = getScaleFactor(context);

    double responsiveFontSzie = scaleFactor * fontsize;
    double lowerLimit = 0.75 * responsiveFontSzie;
    double upperLimit = 1.1 * responsiveFontSzie;

    return responsiveFontSzie.clamp(lowerLimit, upperLimit);
  }

  static double getScaleFactor(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width <= SizeConfig.tablet) {
      return width / 550;
    } else if (width <= SizeConfig.desktop) {
      return width / 1000;
    } else {
      return width / 1500;
    }
  }
}
