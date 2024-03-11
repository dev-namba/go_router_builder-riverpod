import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_practice/router/core/navigator_key.dart';
import 'package:go_router_practice/router/routes/top_routes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  final navigatorKey = ref.watch(navigatorKeyProvider);
  return GoRouter(
    navigatorKey: navigatorKey,
    debugLogDiagnostics: kDebugMode,
    routes: $appRoutes,
    initialLocation: '/home/chat',
  );
}
