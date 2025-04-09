import 'package:flutter/material.dart';

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
            onPressed: () {},
          ),
          CustomIconButton(
            svgImage: Assets.iconsGithub,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
