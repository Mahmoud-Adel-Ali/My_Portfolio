import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_colors.dart';

void showMessage(
  BuildContext context, {
  required String message,
  Color color = AppColors.red,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      content: Text(message),
    ),
  );
}
