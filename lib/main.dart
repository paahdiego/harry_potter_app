import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:harry_potter_app/src/app/app.dart';
import 'package:harry_potter_app/src/app/app_module.dart';

void main() {
  runApp(ModularApp(
    module: AppModule(),
    child: const App(),
  ));
}
