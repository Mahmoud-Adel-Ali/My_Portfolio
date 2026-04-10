import 'package:flutter/material.dart';

import '../../../../../core/theme/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 2,
      color: AppColors.black2,
    );
  }
}
