import 'package:flutter_modular/flutter_modular.dart';
import 'package:harry_potter_app/src/app/app_routes.dart';
import 'package:harry_potter_app/src/models/character_model.dart';
import 'package:harry_potter_app/src/modules/character/character_page.dart';
import 'package:harry_potter_app/src/modules/home/home_page.dart';
import 'package:harry_potter_app/src/modules/splash/splash_page.dart';

class AppModule extends Module {
  final animationDuration = const Duration(milliseconds: 600);
  final TransitionType transitionType = TransitionType.scale;

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AppRoutes.splash,
          child: (context, _) => const SplashPage(),
          transition: transitionType,
        ),
        ChildRoute(
          AppRoutes.home,
          child: (context, _) => const HomePage(),
          duration: animationDuration,
          transition: transitionType,
        ),
        ChildRoute(
          AppRoutes.characterDetails,
          child: (context, arguments) {
            final character = arguments.data as CharacterModel;
            return CharacterDetailsPage(character: character);
          },
          duration: animationDuration,
          transition: transitionType,
        ),
      ];
}
