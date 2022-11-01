import 'package:flutter/material.dart';
import 'package:harry_potter_app/src/core/app_colors.dart';

class AppGradientContainer extends StatelessWidget {
  const AppGradientContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: AppColors.backgroundGradient),
      child: SafeArea(child: child),
    );
  }
}
