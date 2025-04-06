import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
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
      ),
    );
  }
}
