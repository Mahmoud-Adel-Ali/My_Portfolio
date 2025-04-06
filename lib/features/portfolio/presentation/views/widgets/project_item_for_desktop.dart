import 'package:flutter/material.dart';

import '../../../../../core/content/all_projects.dart';
import 'project_details.dart';
import 'project_image_card.dart';

class ProjectItemForDesktop extends StatelessWidget {
  const ProjectItemForDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        Expanded(
          child: ProjectImageCard(
            project: allProjects[3],
          ),
        ),
        Expanded(
          child: ProjectDetails(
            project: allProjects[3],
          ),
        ),
      ],
    );
  }
}
