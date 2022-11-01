import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:harry_potter_app/src/app/app_routes.dart';
import 'package:harry_potter_app/src/core/app_colors.dart';
import 'package:harry_potter_app/src/core/app_images.dart';
import 'package:harry_potter_app/src/shared/components/app_gradient_container.dart';
import 'package:harry_potter_app/src/shared/components/app_loading_icon.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Modular.to.pushReplacementNamed(AppRoutes.home);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AppGradientContainer(
      child: Scaffold(
        body: Column(
          children: [
            const Spacer(),
            Center(
              child: SizedBox(
                width: size.width * 0.7,
                child: Image.asset(AppImages.logo),
              ),
            ),
            const SizedBox(height: 50),
            const AppLoadingIcon(valueColor: AppColors.yellow),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
