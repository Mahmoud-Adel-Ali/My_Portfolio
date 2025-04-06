import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final String svgImage;
  final String link;
  final VoidCallback? onPressed;

  const CustomTextButton({
    super.key,
    required this.text,
    required this.svgImage,
    required this.link,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextButton(
        onPressed: onPressed ??
            () {
              // Handle link opening logic here
              log('Opening link: $link');
            },
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 4,
          children: [
            Flexible(
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  AppColors.main,
                  BlendMode.srcIn,
                ),
                child: SvgPicture.asset(svgImage),
              ),
            ),
            Text(
              text,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppStyles.bold16(context).copyWith(
                color: AppColors.main,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
