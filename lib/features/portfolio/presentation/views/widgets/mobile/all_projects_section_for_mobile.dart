import 'package:flutter/material.dart';

import '../../../../data/data_sources/static_data_source.dart';
import '../all_projects_head_line.dart';
import 'project_item_for_mobile.dart';

class AllProjectsSectionForMobile extends StatelessWidget {
  const AllProjectsSectionForMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        AllProjectsHeadLine(),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: StaticDataSource.allProjects.length,
          itemBuilder: (context, index) {
            return ProjectItemForMobile(
              project: StaticDataSource.allProjects[index],
            );
          },
        ),
      ],
    );
  }
}
