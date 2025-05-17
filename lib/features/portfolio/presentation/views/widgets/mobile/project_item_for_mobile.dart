// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../../../core/models/project_model.dart';
import '../project_details.dart';
import '../project_image_card.dart';


class ProjectItemForMobile extends StatelessWidget {
  const ProjectItemForMobile({
    super.key,
    required this.project,
  });
  final ProjectModel project;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        spacing: 16,
        children: [
          ProjectImageCard(
            project: project,
          ),
          ProjectDetails(
            project: project,
          ),
        ],
      ),
    );
  }
}
