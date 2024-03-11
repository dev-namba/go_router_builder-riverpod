import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_practice/pages/home/home_shell.dart';
import 'package:go_router_practice/router/routes/home/chat/chat_route.dart';
import 'package:go_router_practice/router/routes/home/profile/profile_route.dart';

final GlobalKey<NavigatorState> homeShellNavigatorKey =
    GlobalKey<NavigatorState>();

const homeShellRoute = TypedShellRoute<HomeShellRoute>(
  routes: <TypedRoute<RouteData>>[
    chatRoute,
    profileRoute,
  ],
);

class HomeShellRoute extends ShellRouteData {
  const HomeShellRoute();

  static final GlobalKey<NavigatorState> $navigatorKey = homeShellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return HomeShell(navigationShell: navigator);
  }
}
