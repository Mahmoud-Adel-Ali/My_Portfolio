import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'linked_in_and_github_buttons.dart';

class NameAndTitleAndContactMeSection extends StatelessWidget {
  const NameAndTitleAndContactMeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: SelectableText(
            "hi, i am \nmahmoud adel.",
            style: AppStyles.regular50(context),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: SelectableText(
            "Sr Mobile App Developer | iOS/Android | Flutter | React Native | UI/UX Expert | 2+ Years Building Scalable.\nPixel-Perfect Apps with Firebase, REST APIs & Bloc/Redux",
            style: AppStyles.regular18(context),
          ),
        ),
        SizedBox(height: 16),
        Row(
          children: [
            CustomButton(
              text: "Contact Me",
              onPressed: () {},
            ),
            SizedBox(width: 8),
            LinkedInAndGitHubButtons(),
          ],
        ),
      ],
    );
  }
}
