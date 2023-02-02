import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pattern_project/src/presentation/pages/login/login.dart';
import 'package:pattern_project/src/presentation/pages/splash/splash.dart';
import 'package:pattern_project/src/presentation/pages/verify/verify.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(
    page: SplashPage,
    path: '/splash',
    initial: true,
  ),
  AutoRoute(
    page: LoginPage,
    path: '/login',
  ),
  AutoRoute(
    page: VerifyPage,
    path: '/verify',
  )
])
class AppRouter extends _$AppRouter {}
