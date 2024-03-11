import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_practice/pages/auth/login_page.dart';

const loginRoute = TypedGoRoute<LoginRoute>(path: 'login');

class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => LoginPage();
}
