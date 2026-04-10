import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/custom_link_button.dart';

import '../../../../../core/entities/project_entity.dart';
import '../../../../../core/utils/assets.dart';

class ProjectLinks extends StatelessWidget {
  const ProjectLinks({
    super.key,
    required this.project,
  });
  final ProjectEntity project;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          if (project.gitHubLink != null)
            CustomLinkButton(
              text: 'GitHub',
              svgImage: Assets.iconsGithub,
              link: project.gitHubLink!,
            ),
          if (project.linkedInLink != null)
            CustomLinkButton(
              text: 'LinkedIn',
              svgImage: Assets.iconsLinkedin,
              link: project.linkedInLink!,
            ),
          if (project.figmaLink != null)
            CustomLinkButton(
              text: 'Figma',
              svgImage: Assets.iconsFigma,
              link: project.figmaLink!,
            ),
        ],
      ),
    );
  }
}
