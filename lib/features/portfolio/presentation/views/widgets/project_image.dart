import 'package:flutter/material.dart';

import '../../../../../core/entities/project_entity.dart';

class ProjectImage extends StatelessWidget {
  const ProjectImage({
    super.key,
    required this.project,
    this.scale = 1.0,
  });

  final ProjectEntity project;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: AnimatedScale(
          scale: scale,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
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
      ),
    );
  }
}
