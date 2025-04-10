import 'package:flutter/material.dart';
import 'package:my_portfolio/features/portfolio/presentation/views/widgets/custom_skill_item.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../data/content/my_skills.dart';

class SkillsBody extends StatelessWidget {
  const SkillsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 32,
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            "I love learning new skills and staying updated with the latest technologies. I enjoy challenges that help me grow and improve my abilities.",
            style: AppStyles.regular18(context),
          ),
        ),
        Wrap(
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.start,
          spacing: 8,
          runSpacing: 8,
          children: List.generate(
            mySkills.length,
            (index) => CustomSkillItem(
              skill: mySkills[index],
            ),
          ),
        ),
      ],
    );
  }
}
