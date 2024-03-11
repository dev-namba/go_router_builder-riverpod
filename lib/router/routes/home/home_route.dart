import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_practice/auth_state/auth_state.dart';
import 'package:go_router_practice/pages/home/home_page.dart';
import 'package:go_router_practice/router/routes/auth/login/login_route.dart';
import 'package:go_router_practice/router/routes/home/home_shell_route.dart';
import 'package:go_router_practice/router/routes/top_routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_route.g.dart';

@riverpod
TypedGoRoute<HomeRoute> homeRoute(HomeRouteRef ref) {
  return TypedGoRoute<HomeRoute>(
    path: 'home',
    routes: [homeShellRoute],
  );
}

const homeRoutes = TypedGoRoute<HomeRoute>(
  path: 'home',
  routes: [homeShellRoute],
);

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  NoTransitionPage<void> buildPage(BuildContext context, GoRouterState state) =>
      NoTransitionPage<void>(
        key: state.pageKey,
        child: const HomePage(),
      );

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) async {
    final isAuth = await ProviderScope.containerOf(context).read(
      authStateProvider.future,
    );

    if (isAuth == false) {
      return LoginRoute().location;
    } else {
      return null;
    }
  }
}
