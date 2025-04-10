import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/core/utils/app_styles.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../data/models/skill_model.dart';

class CustomSkillItem extends StatelessWidget {
  final SkillModel skill;

  const CustomSkillItem({
    super.key,
    required this.skill,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.black2),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(
              skill.svgImage,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            skill.label,
            style: AppStyles.medium14(context),
          ),
        ],
      ),
    );
  }
}
