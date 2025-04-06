import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_drawer_item.dart';
import 'app_bar_name.dart';

class DesktopLayoutAppBar extends StatelessWidget {
  const DesktopLayoutAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppBarName(),
        Row(
          spacing: 12,
          children: [
            CustomDrawerItem(
              text: "Work",
              onPressed: () {
                log('work');
              },
            ),
            CustomDrawerItem(
              text: "About",
              onPressed: () {
                log('about');
              },
            ),
            CustomDrawerItem(
              text: "Contact",
              onPressed: () {
                log('contact');
              },
            ),
          ],
        ),
      ],
    );
  }
}
