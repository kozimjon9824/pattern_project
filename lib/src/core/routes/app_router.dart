import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pattern_project/src/presentation/pages/login/login.dart';
import 'package:pattern_project/src/presentation/pages/main_tabs/book/book.dart';
import 'package:pattern_project/src/presentation/pages/main_tabs/home/home.dart';
import 'package:pattern_project/src/presentation/pages/main_tabs/main_menu.dart';
import 'package:pattern_project/src/presentation/pages/main_tabs/profile/profile.dart';
import 'package:pattern_project/src/presentation/pages/product/product.dart';
import 'package:pattern_project/src/presentation/pages/profile_details/profile_details.dart';
import 'package:pattern_project/src/presentation/pages/splash/splash.dart';
import 'package:pattern_project/src/presentation/pages/verify/verify.dart';

import '../../presentation/components/empty_router_page.dart';

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
  ),
  AutoRoute(
    page: MainPage,
    path: '/main',
    children: [
      AutoRoute(
        page: EmptyRouterPage,
        path: 'home',
        name: 'HomeRouter',
        children: [
          AutoRoute(
            page: HomePage,
            path: '',
          ),
          AutoRoute(
            page: ProductDetailPage,
            path: ':productId',
          ),
        ],
      ),
      AutoRoute(
        page: BookPage,
        path: 'book',
      ),
      AutoRoute(
        page: EmptyRouterPage,
        name: 'ProfileRouter',
        path: 'profile',
        children: [
          AutoRoute(
            page: ProfilePage,
            path: '',
          ),
          AutoRoute(
            page: ProfileDetailsPage,
            path: ':userId',
          ),
        ],
      ),
    ],
  ),
])
class AppRouter extends _$AppRouter {}
