import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class NameAndTitleForMe extends StatelessWidget {
  const NameAndTitleForMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            "hi, i am \nmahmoud adel.",
            style: AppStyles.regular65(context),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            "Sr Mobile App Developer | iOS/Android | Flutter | React Native | UI/UX Expert | 2+ Years Building Scalable.\nPixel-Perfect Apps with Firebase, REST APIs & Bloc/Redux",
            style: AppStyles.regular18(context),
          ),
        ),
      ],
    );
  }
}
