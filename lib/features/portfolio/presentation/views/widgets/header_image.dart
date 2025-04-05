import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AspectRatio(
        aspectRatio: 0.8,
        child: Image.asset(
          Assets.imagesMahmoud1,
        ),
      ),
    );
  }
}
