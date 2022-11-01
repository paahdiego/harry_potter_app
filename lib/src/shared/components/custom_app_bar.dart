import 'package:flutter/material.dart';
import 'package:harry_potter_app/src/core/app_colors.dart';
import 'package:harry_potter_app/src/core/app_images.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    this.onLogoTap,
  }) : super(key: key);

  final VoidCallback? onLogoTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      centerTitle: true,
      toolbarHeight: 100,
      title: GestureDetector(
        onTap: onLogoTap,
        child: Image.asset(
          AppImages.logo,
          fit: BoxFit.fitHeight,
          height: 65,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
