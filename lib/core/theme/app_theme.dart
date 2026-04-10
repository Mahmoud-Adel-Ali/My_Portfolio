import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.main,
      scaffoldBackgroundColor: AppColors.background,
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.main,
        brightness: Brightness.dark,
        surface: AppColors.background,
      ),
    );
  }
}
