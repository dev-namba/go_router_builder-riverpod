import 'package:flutter/material.dart';
import 'package:go_router_practice/auth_state/auth_state.dart';
import 'package:go_router_practice/router/routes/auth/auth_route.dart';
import 'package:go_router_practice/router/routes/top_routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () async {
            await ref.read(authStateProvider.notifier).signOut();
            AuthRoute().go(context);
          },
          child: Text('logout'),
        ),
      ),
    );
  }
}
