// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    VerifyRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: VerifyPage(
          key: args.key,
          phone: args.phone,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/splash',
          fullMatch: true,
        ),
        RouteConfig(
          SplashRoute.name,
          path: '/splash',
        ),
        RouteConfig(
          LoginRoute.name,
          path: '/login',
        ),
        RouteConfig(
          VerifyRoute.name,
          path: '/verify',
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [VerifyPage]
class VerifyRoute extends PageRouteInfo<VerifyRouteArgs> {
  VerifyRoute({
    Key? key,
    required String phone,
  }) : super(
          VerifyRoute.name,
          path: '/verify',
          args: VerifyRouteArgs(
            key: key,
            phone: phone,
          ),
        );

  static const String name = 'VerifyRoute';
}

class VerifyRouteArgs {
  const VerifyRouteArgs({
    this.key,
    required this.phone,
  });

  final Key? key;

  final String phone;

  @override
  String toString() {
    return 'VerifyRouteArgs{key: $key, phone: $phone}';
  }
}
