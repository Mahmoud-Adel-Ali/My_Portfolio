import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

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
