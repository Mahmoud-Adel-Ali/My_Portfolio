import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 0.8,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: DecorationImage(
              image: AssetImage(Assets.imagesMahmoud1),
            ),
          ),
        ),
      ),
    );
  }
}
