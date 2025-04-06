import 'package:flutter/material.dart';
import 'package:my_portfolio/core/content/all_projects.dart';

import 'project_image_card.dart';

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
            ProjectImageCard(
              project: allProjects[0],
            ),
            // NameAndTitleAndContactMeSection(),
            // HeaderImage(),
            // CustomDivider(),
          ],
        ),
      ),
    );
  }
}
