import 'package:flutter/material.dart';

import '../../../../../core/content/all_projects.dart';
import 'project_details.dart';
import 'project_image_card.dart';

class ProjectItemForMobile extends StatelessWidget {
  const ProjectItemForMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProjectImageCard(
          project: allProjects[0],
        ),
        ProjectDetails(
          project: allProjects[0],
        ),
      ],
    );
  }
}
