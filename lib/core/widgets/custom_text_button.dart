import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const CustomTextButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.main, width: 2)),
      ),
      child: TextButton(
        onPressed: onPressed,
        autofocus: false,
        clipBehavior: Clip.none,
        focusNode: FocusNode(),
        style: TextButton.styleFrom(
          alignment: Alignment.centerLeft,
          splashFactory: InkRipple.splashFactory,
          overlayColor: AppColors.main.withAlpha(50),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Text(
          text,
          style: AppStyles.bold16(context).copyWith(
            color: AppColors.main,
            decorationColor: AppColors.main,
            decorationThickness: 4,
          ),
        ),
      ),
    );
  }
}
