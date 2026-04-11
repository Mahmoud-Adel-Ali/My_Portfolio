import 'package:flutter/material.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_styles.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/functions/open_url.dart';
import '../../../../../core/widgets/custom_icon_button.dart';

class LetsConnectInfo extends StatelessWidget {
  const LetsConnectInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: SelectableText(
            "Let's connect",
            style: AppStyles.regular40(context),
          ),
        ),
        const SizedBox(height: 16),
        InkWell(
          onTap: () => openUrl(context, 'mailto:${AppConstants.email}'),
          child: Text(
            "Say hello at ${AppConstants.email}",
            style: AppStyles.regular18(context).copyWith(
              color: AppColors.white,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: () => openUrl(context, 'tel:${AppConstants.phoneNum}'),
          child: Text(
            "Or call me at ${AppConstants.phoneNum}",
            style: AppStyles.regular18(context).copyWith(
              color: AppColors.white,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            CustomIconButton(
              svgImage: Assets.iconsLinkedin,
              onPressed: () => openUrl(context, AppConstants.linkedInUrl),
            ),
            CustomIconButton(
              svgImage: Assets.iconsGithub,
              onPressed: () => openUrl(context, AppConstants.githubUrl),
            ),
            // WhatsApp Button
            CustomIconButton(
              svgImage: Assets.iconsVector, // Placeholder icon
              onPressed: () => openUrl(context, AppConstants.whatsappLink),
            ),
          ],
        ),
      ],
    );
  }
}
