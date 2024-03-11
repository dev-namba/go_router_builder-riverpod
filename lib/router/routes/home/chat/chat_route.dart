import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_practice/pages/chat/chat_page.dart';

const chatRoute = TypedGoRoute<ChatRoute>(path: 'chat');

class ChatRoute extends GoRouteData {
  const ChatRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => ChatPage();
}
