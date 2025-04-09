import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_app_bar_actions_item.dart';
import 'desktop_app_bar_name.dart';

class DesktopLayoutAppBar extends StatelessWidget {
  const DesktopLayoutAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DesktopAppBarName(),
        Row(
          spacing: 12,
          children: [
            CustomAppBarActionsItem(
              text: "Work",
              onPressed: () {
                log('work');
              },
            ),
            CustomAppBarActionsItem(
              text: "About",
              onPressed: () {
                log('about');
              },
            ),
            CustomAppBarActionsItem(
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
