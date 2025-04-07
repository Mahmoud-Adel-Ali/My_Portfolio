import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';

class AboutInfo extends StatelessWidget {
  const AboutInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            'About Me',
            style: AppStyles.regular40(context),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            "I'm a Flutter Developer | Mobile App Engineer | Cross-Platform Specialist | Clean Code Advocate",
            style: AppStyles.medium32(context),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            "Experienced Flutter Developer with 2+ years of expertise in building high-performance, scalable mobile applications using Dart, Flutter, and Firebase. Proficient in state management (BLoC, Provider, Riverpod), architectural patterns (MVVM, Clean Architecture), and RESTful API integration. Skilled in UI/UX implementation from Figma designs, debugging, and testing for optimal app stability. Strong foundation in OOP, SOLID principles, data structures, and algorithms, with a passion for writing clean, maintainable code. Effective communicator and team player in Agile environments, fluent in English for seamless collaboration. Committed to continuous learning and staying updated with emerging Flutter technologies.",
            style: AppStyles.regular18(context),
          ),
        ),
      ],
    );
  }
}
