import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class CustomAppBarActionsItem extends StatefulWidget {
  const CustomAppBarActionsItem({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;
  final Function()? onPressed;

  @override
  State<CustomAppBarActionsItem> createState() =>
      _CustomAppBarActionsItemState();
}

class _CustomAppBarActionsItemState extends State<CustomAppBarActionsItem> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      onHover: (value) {
        isHovered = value;
        setState(() {});
      },
      child: Column(
        children: [
          Text(
            widget.text,
            style: AppStyles.semiBold16(context).copyWith(
              color: isHovered ? AppColors.main : AppColors.white,
            ),
          ),
          const SizedBox(height: 4),
          Visibility(
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            visible: isHovered,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: 2,
              width: 24,
              color: AppColors.main,
            ),
          ),
        ],
      ),
    );
  }
}
