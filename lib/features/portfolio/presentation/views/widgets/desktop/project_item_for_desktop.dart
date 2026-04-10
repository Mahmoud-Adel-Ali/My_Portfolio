import 'package:flutter/material.dart';

import '../../../../../../core/entities/project_entity.dart';
import '../project_details.dart';
import '../project_image_card.dart';

class ProjectItemForDesktop extends StatelessWidget {
  const ProjectItemForDesktop({super.key, required this.project});
  final ProjectEntity project;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Expanded(
            child: ProjectImageCard(project: project),
          ),
          Expanded(
            child: ProjectDetails(project: project),
          ),
        ],
      ),
    );
  }
}
