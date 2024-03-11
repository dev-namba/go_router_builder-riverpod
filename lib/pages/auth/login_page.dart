import 'package:flutter/material.dart';
import 'package:go_router_practice/auth_state/auth_state.dart';
import 'package:go_router_practice/router/routes/auth/sign_up/sing_up_route.dart';
import 'package:go_router_practice/router/routes/home/chat/chat_route.dart';
import 'package:go_router_practice/router/routes/top_routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Login'),
        ),
        body: Align(
          child: Column(
            children: [
              FilledButton(
                onPressed: () async {
                  await ref.read(authStateProvider.notifier).signIn();
                  ChatRoute().go(context);
                },
                child: Text('Go to Chat'),
              ),
              FilledButton(
                onPressed: () {
                  SignUpRoute().go(context);
                },
                child: Text('Go to Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
