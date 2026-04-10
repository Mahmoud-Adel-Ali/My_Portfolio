import 'package:flutter/material.dart';

import '../../../../../../core/theme/app_colors.dart';
import '../../../../../../core/theme/app_styles.dart';

class CustomDrawerItem extends StatefulWidget {
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
  State<CustomDrawerItem> createState() => _CustomDrawerItemState();
}

class _CustomDrawerItemState extends State<CustomDrawerItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (event) => setState(() => isHovered = true),
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: ListTile(
        onTap: widget.onPressed,
        leading: Icon(
          widget.iconData,
          color: isHovered ? AppColors.main : AppColors.white,
        ),
        title: Text(
          widget.text,
          style: AppStyles.regular18(context).copyWith(
            color: isHovered ? AppColors.main : AppColors.white,
          ),
        ),
      ),
    );
  }
}
