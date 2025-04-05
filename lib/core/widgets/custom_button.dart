import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.showDotIcon = true,
    this.onPressed,
  });
  final String text;
  final bool? showDotIcon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: AppColors.main,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: AppColors.main),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          Text(
            text,
            style: AppStyles.bold16(context),
          ),
          showDotIcon == true
              ? Icon(
                  Icons.hdr_strong,
                  size: 15,
                  color: AppColors.black,
                )
              : SizedBox(width: 0, height: 0),
        ],
      ),
    );
  }
}
