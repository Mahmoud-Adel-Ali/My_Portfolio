import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/entities/project_entity.dart';
import '../project_details.dart';
import '../project_image_card.dart';

class ProjectItemForMobile extends StatelessWidget {
  const ProjectItemForMobile({
    super.key,
    required this.project,
  });
  final ProjectEntity project;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: const Duration(milliseconds: 600),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16),
        child: Column(
          spacing: 24,
          children: [
            ProjectImageCard(
              project: project,
            ),
            ProjectDetails(
              project: project,
            ),
          ],
        ),
      ),
    );
  }
}
