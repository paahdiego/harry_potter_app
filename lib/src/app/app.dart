import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:harry_potter_app/src/core/app_themes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Harry Potter App',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.defaultTheme(context),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
