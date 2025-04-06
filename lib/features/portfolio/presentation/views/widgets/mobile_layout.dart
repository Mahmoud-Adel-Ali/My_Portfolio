import 'package:flutter/material.dart';

import 'custom_divider.dart';
import 'header_image.dart';
import 'name_and_title_and_contact_me_section.dart';

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
            HeaderImage(),
            CustomDivider(),
          ],
        ),
      ),
    );
  }
}
