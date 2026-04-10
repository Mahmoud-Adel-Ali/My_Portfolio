import 'package:flutter/material.dart';

import '../../../../../../core/theme/app_styles.dart';

class DesktopAppBarName extends StatelessWidget {
  const DesktopAppBarName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Mahmoud Adel ALi Mohamed",
      style: AppStyles.regular32(context),
    );
  }
}
