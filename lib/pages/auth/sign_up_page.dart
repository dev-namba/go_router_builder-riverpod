import 'package:flutter/material.dart';
import 'package:go_router_practice/router/routes/auth/login/login_route.dart';
import 'package:go_router_practice/router/routes/top_routes.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Sign Up'),
        ),
        body: Center(
          child: FilledButton(
            onPressed: () {
              LoginRoute().go(context);
            },
            child: Text('Go to Login'),
          ),
        ),
      ),
    );
  }
}
