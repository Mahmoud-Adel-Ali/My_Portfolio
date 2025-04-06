import 'package:flutter/material.dart';

import 'desktop_layout_app_bat.dart';
import 'header_image.dart';
import 'name_and_title_and_contact_me_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: const Column(
          children: [
            DesktopLayoutAppBar(),
            SizedBox(height: 24),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(flex: 2, child: NameAndTitleAndContactMeSection()),
                SizedBox(width: 32),
                Expanded(child: HeaderImage()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
