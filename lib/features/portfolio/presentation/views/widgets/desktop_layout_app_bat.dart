import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_app_bar_actions_item.dart';
import '../../manager/scrolling_cubit/scrolling_cubit.dart';
import 'desktop_app_bar_name.dart';

class DesktopLayoutAppBar extends StatelessWidget {
  const DesktopLayoutAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<ScrollingCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DesktopAppBarName(),
        Row(
          spacing: 12,
          children: [
            CustomAppBarActionsItem(
              text: "Projects",
              onPressed: () {
                cubit.scrollTo(cubit.projectsKey);
              },
            ),
            CustomAppBarActionsItem(
              text: "About",
              onPressed: () {
                cubit.scrollTo(cubit.aboutKey);
              },
            ),
            CustomAppBarActionsItem(
              text: "Skills",
              onPressed: () {
                cubit.scrollTo(cubit.skillsKey);
              },
            ),
            CustomAppBarActionsItem(
              text: "Contact",
              onPressed: () {
                cubit.scrollTo(cubit.connectKey);
              },
            ),
          ],
        ),
      ],
    );
  }
}
