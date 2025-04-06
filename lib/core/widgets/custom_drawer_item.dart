import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        // shape: const StadiumBorder(),
        // elevation: 0,
        padding: EdgeInsets.zero,
      ),
      child: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Text(
          text,
          style: AppStyles.medium16Inter(context),
        ),
      ),
    );
  }
}
