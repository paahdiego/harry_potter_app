import 'package:flutter/material.dart';
import 'package:harry_potter_app/src/core/app_colors.dart';

class DefaultRefreshIndicator extends StatelessWidget {
  const DefaultRefreshIndicator({
    Key? key,
    required this.child,
    required this.onRefresh,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: AppColors.backgroundColor,
      backgroundColor: AppColors.yellow,
      onRefresh: () => Future.sync(() => onRefresh()),
      child: child,
    );
  }
}
