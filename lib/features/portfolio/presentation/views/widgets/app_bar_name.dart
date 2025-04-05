
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class AppBarName extends StatelessWidget {
  const AppBarName({
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
