import 'package:flutter/material.dart';

import '../../../../../core/entities/project_entity.dart';
import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_styles.dart';
import 'project_image.dart';

class ProjectImageCard extends StatefulWidget {
  final ProjectEntity project;
  final double? height;

  const ProjectImageCard({
    super.key,
    required this.project,
    this.height,
  });

  @override
  State<ProjectImageCard> createState() => _ProjectImageCardState();
}

class _ProjectImageCardState extends State<ProjectImageCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: AppColors.black2,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: _isHovered
                ? AppColors.main.withOpacity(0.5)
                : Colors.white.withOpacity(0.05),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: _isHovered
                  ? AppColors.main.withOpacity(0.15)
                  : Colors.black.withOpacity(0.2),
              blurRadius: _isHovered ? 40 : 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              spacing: 12,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Project Name Tag
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: _isHovered
                        ? AppColors.main.withOpacity(0.1)
                        : AppColors.black,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: _isHovered
                          ? AppColors.main.withOpacity(0.3)
                          : Colors.transparent,
                    ),
                  ),
                  child: Text(
                    widget.project.name,
                    style: AppStyles.semiBold16(context).copyWith(
                      color: _isHovered ? AppColors.main : AppColors.white,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                // Project image with scale
                ProjectImage(
                  project: widget.project,
                  scale: _isHovered ? 1.05 : 1.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
