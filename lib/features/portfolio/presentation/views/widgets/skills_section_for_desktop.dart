import 'package:flutter/material.dart';

import 'skills_body.dart';
import 'skills_headline.dart';

class SkillsSectionForDesktop extends StatelessWidget {
  const SkillsSectionForDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: SkillsHeadline(),
        ),
        Expanded(
          flex: 5,
          child: SkillsBody(),
        ),
      ],
    );
  }
}
