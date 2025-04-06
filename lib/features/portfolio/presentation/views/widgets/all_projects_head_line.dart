import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class AllProjectsHeadLine extends StatelessWidget {
  const AllProjectsHeadLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            'Featured Projects',
            style: AppStyles.regular40(context),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            'Here are some of the selected projects that showcase my passion for Mobile App development (Flutter).',
            style: AppStyles.regular18(context),
          ),
        )
      ],
    );
  }
}
