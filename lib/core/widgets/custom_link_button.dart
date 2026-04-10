import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/app_colors.dart';
import '../theme/app_styles.dart';
import '../utils/functions/open_url.dart';

class CustomLinkButton extends StatelessWidget {
  final String text;
  final String svgImage;
  final String link;

  const CustomLinkButton({
    super.key,
    required this.text,
    required this.svgImage,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => openUrl(context, link),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 4,
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              AppColors.main,
              BlendMode.srcIn,
            ),
            child: SvgPicture.asset(
              svgImage,
              height: 22,
              width: 22,
            ),
          ),
          Text(
            text,
            style: AppStyles.semiBold16(context).copyWith(
              color: AppColors.main,
            ),
          ),
        ],
      ),
    );
  }
}
