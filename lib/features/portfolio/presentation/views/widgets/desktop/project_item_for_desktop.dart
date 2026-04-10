import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/entities/project_entity.dart';
import '../project_details.dart';
import '../project_image_card.dart';

class ProjectItemForDesktop extends StatelessWidget {
  const ProjectItemForDesktop({super.key, required this.project});
  final ProjectEntity project;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: const Duration(milliseconds: 600),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48.0, horizontal: 32),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 64,
          children: [
            Expanded(
              flex: 5,
              child: ProjectImageCard(project: project),
            ),
            Expanded(
              flex: 6,
              child: ProjectDetails(project: project),
            ),
          ],
        ),
      ),
    );
  }
}
