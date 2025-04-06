import 'package:flutter/material.dart';

import '../../../../../core/models/project_model.dart';
import '../../../../../core/utils/app_styles.dart';
import 'project_details_item.dart';
import 'project_links.dart';

class ProjectDetails extends StatelessWidget {
  const ProjectDetails({super.key, required this.project});
  final ProjectModel project;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText(
          project.subName,
          style: AppStyles.medium32(context),
        ),
        const SizedBox(height: 16),
        SelectableText(
          project.description,
          style: AppStyles.regular18(context),
        ),
        ProjectDetailsItem(title: "PRJECT INFO"),
        ProjectDetailsItem(
          title: "Year",
          trilling: project.year.toString(),
        ),
        ProjectDetailsItem(
          title: "Role",
          trilling: "Flutter Developer",
        ),
        const SizedBox(height: 16),
        ProjectLinks(project: project),
      ],
    );
  }
}
