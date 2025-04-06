import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/custom_text_button.dart';

import '../../../../../core/models/project_model.dart';
import '../../../../../core/utils/assets.dart';

class ProjectLinks extends StatelessWidget {
  const ProjectLinks({
    super.key,
    required this.project,
  });
  final ProjectModel project;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          CustomTextButton(
            text: 'GitHub',
            svgImage: Assets.iconsGithub,
            link: project.gitHubLink,
          ),
          project.linkedInLink == null
              ? const SizedBox()
              : CustomTextButton(
                  text: 'LinkedIn',
                  svgImage: Assets.iconsLinkedin,
                  link: project.linkedInLink!,
                ),
          project.linkedInLink == null
              ? const SizedBox()
              : CustomTextButton(
                  text: 'Figma',
                  svgImage: Assets.iconsFigma,
                  link: project.linkedInLink!,
                ),
        ],
      ),
    );
  }
}
