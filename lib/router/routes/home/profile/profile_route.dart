import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_practice/pages/profile/profile_page.dart';

const profileRoute = TypedGoRoute<ProfileRoute>(path: 'profile');

class ProfileRoute extends GoRouteData {
  const ProfileRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => ProfilePage();
}
