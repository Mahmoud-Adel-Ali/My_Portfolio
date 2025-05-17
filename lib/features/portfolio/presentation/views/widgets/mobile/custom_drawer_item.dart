import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_app_bar_actions_item.dart';

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
