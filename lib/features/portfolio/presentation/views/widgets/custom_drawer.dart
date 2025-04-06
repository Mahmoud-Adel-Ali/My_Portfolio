import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/custom_app_bar_actions_item.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.background,
      width: 200,
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
          CustomDrawerItem(
            text: "Work",
            onPressed: () {},
          ),
          CustomDrawerItem(
            text: "About",
            onPressed: () {},
            iconData: Icons.info,
          ),
          CustomDrawerItem(
            text: "Contact",
            onPressed: () {},
            iconData: Icons.email,
          ),
        ],
      ),
    );
  }
}

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.text,
    this.onPressed,
    this.iconData = Icons.work,
  });

  final String text;
  final Function()? onPressed;
  final IconData? iconData;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconData),
      title: CustomAppBarActionsItem(
        text: text,
        onPressed: onPressed,
      ),
    );
  }
}
