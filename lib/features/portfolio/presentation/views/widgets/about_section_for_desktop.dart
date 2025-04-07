import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import 'about_info.dart';
import 'header_image.dart';

class AboutSectionForDesktop extends StatelessWidget {
  const AboutSectionForDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: Row(
        children: [
          Expanded(
            child: HeaderImage(
              image: Assets.imagesMahmoud2,
              aspectRatio: 4 / 3,
            ),
          ),
          Expanded(flex: 2, child: const AboutInfo()),
        ],
      ),
    );
  }
}
