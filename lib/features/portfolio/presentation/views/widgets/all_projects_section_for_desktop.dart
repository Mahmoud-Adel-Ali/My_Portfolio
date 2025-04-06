import 'package:flutter/material.dart';
import 'package:my_portfolio/features/portfolio/presentation/views/widgets/project_item_for_desktop.dart';

import '../../../../../core/content/all_projects.dart';
import 'all_projects_head_line.dart';

class AllProjectsSectionForDesktop extends StatelessWidget {
  const AllProjectsSectionForDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        AllProjectsHeadLine(),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: allProjects.length,
          itemBuilder: (context, index) {
            return ProjectItemForDesktop(
              project: allProjects[index],
            );
          },
        ),
      ],
    );
  }
}
