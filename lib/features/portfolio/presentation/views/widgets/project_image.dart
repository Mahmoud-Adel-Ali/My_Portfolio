import 'package:flutter/material.dart';

import '../../../../../core/models/project_model.dart';

class ProjectImage extends StatelessWidget {
  const ProjectImage({
    super.key,
    required this.project,
  });

  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(project.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
