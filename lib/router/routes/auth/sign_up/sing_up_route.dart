import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_practice/pages/auth/sign_up_page.dart';

const signUpRoute = TypedGoRoute<SignUpRoute>(path: 'sign_up');

class SignUpRoute extends GoRouteData {
  const SignUpRoute();

  // @override
  // Widget build(BuildContext context, GoRouterState state) => SignUpPage();

  @override
  NoTransitionPage buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(child: SignUpPage());
  }
}
