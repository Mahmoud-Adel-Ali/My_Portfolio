import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CustomFadeInRight extends StatelessWidget {
  const CustomFadeInRight({
    required this.child,
    required this.duration,
    super.key,
  });
  final Widget child;

  final int duration;

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: const Duration(milliseconds: 300),
      duration: Duration(milliseconds: duration),
      child: child,
    );
  }
}
