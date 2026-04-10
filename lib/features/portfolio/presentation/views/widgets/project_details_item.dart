
import 'package:flutter/material.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_styles.dart';

class ProjectDetailsItem extends StatelessWidget {
  const ProjectDetailsItem({
    super.key,
    required this.title,
    this.trilling,
    this.labelsColor,
  });
  final String title;
  final String? trilling;
  final Color? labelsColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppStyles.semiBold16(context).copyWith(
                color: labelsColor ?? AppColors.grey,
              ),
            ),
            if (trilling != null)
              Text(
                trilling!,
                style: AppStyles.semiBold16(context).copyWith(
                  color: AppColors.white,
                ),
              ),
          ],
        ),
        const SizedBox(height: 12),
        Divider(
          color: AppColors.black2,
          thickness: 1,
        ),
      ],
    );
  }
}
