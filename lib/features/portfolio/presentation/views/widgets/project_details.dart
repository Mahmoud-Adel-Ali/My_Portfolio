import 'package:flutter/material.dart';

import '../../../../../core/entities/project_entity.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_styles.dart';
import 'project_details_item.dart';
import 'project_links.dart';

class ProjectDetails extends StatelessWidget {
  const ProjectDetails({super.key, required this.project});
  final ProjectEntity project;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SelectableText(
          project.subName,
          style: AppStyles.medium32(context).copyWith(
            color: AppColors.main,
          ),
        ),
        const SizedBox(height: 24),
        SelectableText(
          project.description,
          style: AppStyles.regular18(context),
        ),
        const SizedBox(height: 32),
        ProjectDetailsItem(
          title: "PROJECT INFO",
          labelsColor: AppColors.white,
        ),
        ProjectDetailsItem(
          title: "Year",
          trilling: project.year.toString(),
        ),
        ProjectDetailsItem(
          title: "Role",
          trilling: "Flutter Developer",
        ),
        const SizedBox(height: 32),
        ProjectLinks(project: project),
      ],
    );
  }
}
