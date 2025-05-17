import 'package:flutter/material.dart';

import '../about_info.dart';


class AboutSectionForMobile extends StatelessWidget {
  const AboutSectionForMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: Column(
        // spacing: 32,
        children: [
          const AboutInfo(),
          // HeaderImage(
          //   image: Assets.imagesMahmoud2,
          //   aspectRatio: 4 / 3,
          // ),
        ],
      ),
    );
  }
}
