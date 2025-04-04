import 'package:flutter/material.dart';

import '../../constants.dart';
import 'app_colors.dart';

abstract class AppStyles {
  static const TextStyle medium14 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    fontFamily: Constants.manropeFontFamily,
    color: AppColors.white,
  );

  static const TextStyle medium16Inter = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    fontFamily: Constants.interFontFamily,
    color: AppColors.white,
  );
  
  static const TextStyle medium16Manrope = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    fontFamily: Constants.manropeFontFamily,
    color: AppColors.white,
  );

  static const TextStyle semiBold16 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    fontFamily: Constants.manropeFontFamily,
    color: AppColors.white,
  );

  static const TextStyle bold16 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 16,
    fontFamily: Constants.manropeFontFamily,
    color: AppColors.black,
  );

  static const TextStyle regular18 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 18,
    fontFamily: Constants.manropeFontFamily,
    color: AppColors.grey,
  );

  static const TextStyle medium32 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 32,
    fontFamily: Constants.manropeFontFamily,
    color: AppColors.white,
  );

  static const TextStyle regular32 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 32,
    fontFamily: Constants.bebasNeueFontFamily,
    color: AppColors.white,
  );

  static const TextStyle regular40 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 40,
    fontFamily: Constants.bebasNeueFontFamily,
    color: AppColors.white,
  );

  static const TextStyle regular65 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 65,
    fontFamily: Constants.bebasNeueFontFamily,
    color: AppColors.white,
  );
}
