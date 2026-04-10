import 'package:flutter/material.dart';

import '../../../../../core/constants/app_constants.dart';
import '../../../../../core/theme/app_styles.dart';
import '../../../../../core/utils/functions/open_url.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'linked_in_and_github_buttons.dart';

class AboutInfo extends StatelessWidget {
  const AboutInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            'About Me',
            style: AppStyles.regular40(context),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            "I'm a Flutter Developer | Mobile App Engineer | Cross-Platform Specialist | Clean Code Advocate",
            style: AppStyles.medium32(context),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            "Flutter Developer focused on building scalable, high-quality mobile applications with clean architecture and exceptional user experience. Experienced in developing cross-platform apps using Flutter, Firebase, and REST APIs, with strong expertise in BLoC and Provider state management. Known for delivering pixel-perfect UI from Figma designs and writing maintainable, performance-driven code. Continuously learning and adapting to modern technologies to build impactful digital products.",
            style: AppStyles.regular18(context),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomButton(
              text: "DOWNLOAD RESUME",
              onPressed: () {
                openUrl(context, AppConstants.resumeUrl);
              },
            ),
            LinkedInAndGitHubButtons(),
          ],
        ),
      ],
    );
  }
}
