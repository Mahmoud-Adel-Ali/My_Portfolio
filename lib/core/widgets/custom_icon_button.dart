import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.svgImage,
    this.onPressed,
  });
  final String svgImage;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.black2,
        elevation: 0,
        shape: const CircleBorder(), // This makes the button circular
        padding: const EdgeInsets.all(16), // Adjust padding as needed
      ),
      child: SvgPicture.asset(svgImage),
    );
  }
}
