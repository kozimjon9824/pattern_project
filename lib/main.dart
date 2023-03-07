import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'src/core/routes/app_router.dart';
import 'src/core/themes/app_theme.dart';
import 'src/injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDi();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp.router(
      title: 'Flutter Pattern for master branch',
      debugShowCheckedModeBanner: false,
      theme: appThemeData,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

//flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
