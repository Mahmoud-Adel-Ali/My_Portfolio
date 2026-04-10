import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theme/app_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../manager/scrolling_cubit/scrolling_cubit.dart';
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
            "Flutter Mobile Developer | iOS & Android | Building scalable, pixel-perfect apps using Firebase, REST APIs, and BLoC with strong focus on performance and user experience",
            style: AppStyles.regular18(context),
          ),
        ),
        SizedBox(height: 32),
        Row(
          children: [
            CustomButton(
              text: "Contact Me",
              onPressed: () {
                var cubit = context.read<ScrollingCubit>();
                cubit.scrollTo(cubit.connectKey);
              },
            ),
            SizedBox(width: 8),
            LinkedInAndGitHubButtons(),
          ],
        ),
      ],
    );
  }
}
