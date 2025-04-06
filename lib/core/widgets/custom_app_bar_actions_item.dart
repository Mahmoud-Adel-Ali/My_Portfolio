import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class CustomAppBarActionsItem extends StatelessWidget {
  const CustomAppBarActionsItem({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.black,
        foregroundColor: AppColors.white,
        shape: const StadiumBorder(),
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        minimumSize: Size.zero,
      ),
      child: Text(
        text,
        style: AppStyles.semiBold16(context),
      ),
    );
  }
}
