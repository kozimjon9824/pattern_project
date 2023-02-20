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
    MainRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    BookRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const BookPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    ProductDetailRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProductDetailRouteArgs>(
          orElse: () => ProductDetailRouteArgs(
              productId: pathParams.getString('productId')));
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: ProductDetailPage(
          key: args.key,
          productId: args.productId,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    ProfileDetailsRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ProfileDetailsRouteArgs>(
          orElse: () =>
              ProfileDetailsRouteArgs(userId: pathParams.getString('userId')));
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: ProfileDetailsPage(
          key: args.key,
          userId: args.userId,
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
        RouteConfig(
          MainRoute.name,
          path: '/main',
          children: [
            RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: MainRoute.name,
              children: [
                RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                ),
                RouteConfig(
                  ProductDetailRoute.name,
                  path: ':productId',
                  parent: HomeRouter.name,
                ),
              ],
            ),
            RouteConfig(
              BookRoute.name,
              path: 'book',
              parent: MainRoute.name,
            ),
            RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: MainRoute.name,
              children: [
                RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: ProfileRouter.name,
                ),
                RouteConfig(
                  ProfileDetailsRoute.name,
                  path: ':userId',
                  parent: ProfileRouter.name,
                ),
              ],
            ),
          ],
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

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          path: '/main',
          initialChildren: children,
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [EmptyRouterPage]
class HomeRouter extends PageRouteInfo<void> {
  const HomeRouter({List<PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [BookPage]
class BookRoute extends PageRouteInfo<void> {
  const BookRoute()
      : super(
          BookRoute.name,
          path: 'book',
        );

  static const String name = 'BookRoute';
}

/// generated route for
/// [EmptyRouterPage]
class ProfileRouter extends PageRouteInfo<void> {
  const ProfileRouter({List<PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [ProductDetailPage]
class ProductDetailRoute extends PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    Key? key,
    required String productId,
  }) : super(
          ProductDetailRoute.name,
          path: ':productId',
          args: ProductDetailRouteArgs(
            key: key,
            productId: productId,
          ),
          rawPathParams: {'productId': productId},
        );

  static const String name = 'ProductDetailRoute';
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({
    this.key,
    required this.productId,
  });

  final Key? key;

  final String productId;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [ProfileDetailsPage]
class ProfileDetailsRoute extends PageRouteInfo<ProfileDetailsRouteArgs> {
  ProfileDetailsRoute({
    Key? key,
    required String userId,
  }) : super(
          ProfileDetailsRoute.name,
          path: ':userId',
          args: ProfileDetailsRouteArgs(
            key: key,
            userId: userId,
          ),
          rawPathParams: {'userId': userId},
        );

  static const String name = 'ProfileDetailsRoute';
}

class ProfileDetailsRouteArgs {
  const ProfileDetailsRouteArgs({
    this.key,
    required this.userId,
  });

  final Key? key;

  final String userId;

  @override
  String toString() {
    return 'ProfileDetailsRouteArgs{key: $key, userId: $userId}';
  }
}
