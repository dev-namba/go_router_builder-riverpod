import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_practice/router/routes/auth/auth_route.dart';
import 'package:go_router_practice/router/routes/auth/login/login_route.dart';
import 'package:go_router_practice/router/routes/auth/sign_up/sing_up_route.dart';
import 'package:go_router_practice/router/routes/home/chat/chat_route.dart';
import 'package:go_router_practice/router/routes/home/home_route.dart';
import 'package:go_router_practice/router/routes/home/home_shell_route.dart';
import 'package:go_router_practice/router/routes/home/profile/profile_route.dart';

part 'top_routes.g.dart';

@TypedGoRoute<TopRoute>(
  path: '/',
  routes: [
    homeRoutes,
    authRoute,
  ],
)
class TopRoute extends GoRouteData {
  const TopRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => SizedBox.shrink();
}
