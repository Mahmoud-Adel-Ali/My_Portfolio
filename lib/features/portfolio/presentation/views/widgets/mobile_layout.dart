import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import 'about_section_for_mobile.dart';
import 'all_projects_section_for_mobile.dart';
import 'custom_divider.dart';
import 'header_image.dart';
import 'lets_connect_section_for_mobile.dart';
import 'name_and_title_and_contact_me_section.dart';
import 'skills_section_for_mobile.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 16,
          children: [
            NameAndTitleAndContactMeSection(),
            HeaderImage(image: Assets.imagesMahmoud1),
            CustomDivider(),
            AllProjectsSectionForMobile(),
            CustomDivider(),
            AboutSectionForMobile(),
            CustomDivider(),
            SkillsSectionForMobile(),
            CustomDivider(),
            LetsConnectSectionForMobile(),
          ],
        ),
      ),
    );
  }
}
