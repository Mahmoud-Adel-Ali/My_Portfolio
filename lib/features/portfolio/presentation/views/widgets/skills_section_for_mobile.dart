import 'package:flutter/material.dart';

import 'skills_body.dart';
import 'skills_headline.dart';

class SkillsSectionForMobile extends StatelessWidget {
  const SkillsSectionForMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SkillsHeadline(),
        SkillsBody(),
      ],
    );
  }
}
