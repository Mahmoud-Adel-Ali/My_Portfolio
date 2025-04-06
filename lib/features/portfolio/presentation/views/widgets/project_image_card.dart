import 'package:flutter/material.dart';

import '../../../../../core/models/project_model.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import 'project_image.dart';

class ProjectImageCard extends StatelessWidget {
  final ProjectModel project;
  final double? height;

  const ProjectImageCard({
    super.key,
    required this.project,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1, // Maintain square aspect ratio
      child: Container(
        height: height ?? 200, // Allow custom height with default fallback
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColors.black2,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                project.name, // Use passed project name
                style: AppStyles.semiBold16(context),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            // Project image
            ProjectImage(project: project),
          ],
        ),
      ),
    );
  }
}
