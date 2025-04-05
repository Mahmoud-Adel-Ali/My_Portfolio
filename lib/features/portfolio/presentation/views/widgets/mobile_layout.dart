import 'package:flutter/material.dart';

import 'name_and_title_for_me.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            NameAndTitleForMe(),
          ],
        ),
      ),
    );
  }
}
