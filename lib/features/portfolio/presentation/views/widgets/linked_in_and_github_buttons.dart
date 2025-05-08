import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/core/utils/functions/open_url.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/custom_icon_button.dart';

class LinkedInAndGitHubButtons extends StatelessWidget {
  const LinkedInAndGitHubButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Row(
        children: [
          CustomIconButton(
            svgImage: Assets.iconsLinkedin,
            onPressed: () {
              openUrl(context, Constants.linkedInUrl);
            },
          ),
          CustomIconButton(
            svgImage: Assets.iconsGithub,
            onPressed: () {
              openUrl(context, Constants.githubUrl);
            },
          ),
        ],
      ),
    );
  }
}
