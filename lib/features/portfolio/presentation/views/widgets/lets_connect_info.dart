import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/app_styles.dart';
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
      children: [
        SizedBox(
          width: double.infinity,
          child: SelectableText(
            "Let's connect",
            style: AppStyles.regular40(context),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: SelectableText(
            "Say hello at mahmoudadela413@gmailcom",
            style: AppStyles.regular18(context),
          ),
        ),
        SizedBox(height: 16),
        Row(
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
            CustomIconButton(
              svgImage: Assets.iconsInstagram,
              onPressed: () {
                // openUrl(context, Constants.instagramUrl);
              },
            ),
          ],
        ),
      ],
    );
  }
}
