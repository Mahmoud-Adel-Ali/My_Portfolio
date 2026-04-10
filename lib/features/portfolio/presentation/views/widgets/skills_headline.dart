import 'package:flutter/material.dart';

import '../../../../../core/theme/app_styles.dart';

class SkillsHeadline extends StatelessWidget {
  const SkillsHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        'My Capabilities',
        style: AppStyles.regular40(context),
      ),
    );
  }
}
