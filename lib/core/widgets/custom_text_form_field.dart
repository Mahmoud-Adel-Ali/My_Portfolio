import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.onChanged,
    this.suffixIcon,
    this.validator,
    this.controller,
    this.keyboardType,
    this.prefixIcon,
    this.maxLine,
  });
  final TextEditingController? controller;
  final int? maxLine;
  final Function(String)? onChanged;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: onChanged,
      style: AppStyles.regular18(context),
      maxLines: maxLine ?? 1,
      cursorColor: AppColors.grey,
      decoration: InputDecoration(
        fillColor: AppColors.black2,
        filled: true,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
        focusedBorder: _buildOutlineBorder(),
        errorBorder: errorBorder(context),
        focusedErrorBorder: errorBorder(context),
        enabledBorder: _buildOutlineBorder(color: AppColors.black2),
      ),
    );
  }

  OutlineInputBorder _buildOutlineBorder({Color color = AppColors.black2}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
        color: color,
        width: 1.5,
      ),
    );
  }

  OutlineInputBorder errorBorder(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: AppColors.grey,
        width: 1.5,
      ),
    );
  }
}
