import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_practice/auth_state/auth_state.dart';
import 'package:go_router_practice/router/routes/auth/login/login_route.dart';
import 'package:go_router_practice/router/routes/auth/sign_up/sing_up_route.dart';
import 'package:go_router_practice/router/routes/home/chat/chat_route.dart';
import 'package:go_router_practice/router/routes/top_routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

const authRoute = TypedGoRoute<AuthRoute>(
  path: 'auth',
  routes: [
    signUpRoute,
    loginRoute,
  ],
);

class AuthRoute extends GoRouteData {
  const AuthRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => SizedBox.shrink();

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) async {
    final isAuth = await ProviderScope.containerOf(context).read(
      authStateProvider.future,
    );

    if (isAuth == false) {
      if (state.fullPath == '/auth') {
        return LoginRoute().location;
      } else {
        return null;
      }
    } else {
      return ChatRoute().location;
    }
  }
}
