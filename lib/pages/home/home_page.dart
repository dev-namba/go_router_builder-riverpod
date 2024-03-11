import 'package:flutter/material.dart';
import 'package:go_router_practice/router/routes/home/chat/chat_route.dart';
import 'package:go_router_practice/router/routes/top_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: Scaffold(
        body: Center(
          child: FilledButton(
            onPressed: () => ChatRoute().go(context),
            child: Text('Go to Chat'),
          ),
        ),
      ),
    );
  }
}
