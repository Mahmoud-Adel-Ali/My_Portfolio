import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../manager/scrolling_cubit/scrolling_cubit.dart';
import 'custom_drawer_item.dart';


class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.background,
      width: 200,
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  'Mahmoud Adel.',
                  style: AppStyles.regular40(context),
                ),
              ),
            ),
            DrawerItems(),
          ],
        ),
      ),
    );
  }
}

class DrawerItems extends StatelessWidget {
  const DrawerItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<ScrollingCubit>();
    return Column(
      children: [
        CustomDrawerItem(
          text: "Projects",
          onPressed: () {
            Navigator.pop(context);
            cubit.scrollTo(cubit.projectsKey);
          },
        ),
        CustomDrawerItem(
          text: "About",
          onPressed: () {
            Navigator.pop(context);
            cubit.scrollTo(cubit.aboutKey);
          },
          iconData: Icons.info,
        ),
        CustomDrawerItem(
          text: "Skills",
          onPressed: () {
            Navigator.pop(context);
            cubit.scrollTo(cubit.skillsKey);
          },
          iconData: Icons.school,
        ),
        CustomDrawerItem(
          text: "Contact",
          onPressed: () {
            Navigator.pop(context);
            cubit.scrollTo(cubit.connectKey);
          },
          iconData: Icons.email,
        ),
      ],
    );
  }
}
