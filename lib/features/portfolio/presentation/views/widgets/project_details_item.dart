
import 'package:flutter/material.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_styles.dart';

class ProjectDetailsItem extends StatelessWidget {
  const ProjectDetailsItem({
    super.key,
    required this.title,
    this.trilling,
  });
  final String title;
  final String? trilling;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.black2, width: 2),
        ),
      ),
      child: ListTile(
        title: Text(
          title,
          style: AppStyles.semiBold16(context),
        ),
        trailing: trilling == null
            ? null
            : Text(
                trilling!,
                style: AppStyles.semiBold16(context),
              ),
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
