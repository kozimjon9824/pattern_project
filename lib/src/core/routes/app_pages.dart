import 'package:flutter/material.dart';
import 'app_routes.dart';

class RouteGenerateKit {
  Route? generateKit(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      // case AppRoutes.splash:
      //   return MaterialPageRoute(
      //       builder: (context) => const SplashPage(),
      //       settings: RouteSettings(arguments: args));
      // case AppRoutes.language:
      //   return simpleRoute(const LanguagePage());
    }
    return null;
  }

  simpleRoute(Widget route) => MaterialPageRoute(builder: (context) => route);
}
