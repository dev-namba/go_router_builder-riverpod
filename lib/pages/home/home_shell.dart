import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_practice/router/routes/home/chat/chat_route.dart';
import 'package:go_router_practice/router/routes/home/profile/profile_route.dart';
import 'package:go_router_practice/router/routes/top_routes.dart';

class HomeShell extends StatelessWidget {
  const HomeShell({
    required this.navigationShell,
    super.key,
  });

  final Widget navigationShell;

  @override
  Widget build(BuildContext context) {
    int getCurrentIndex(BuildContext context) {
      final location = GoRouterState.of(context).uri.toString();
      switch (location) {
        case '/home/chat':
          return 0;
        case '/home/profile':
          return 1;
        default:
          return 0;
      }
    }

    return PopScope(
      canPop: false,
      child: Scaffold(
        body: navigationShell,
        bottomNavigationBar: SizedBox(
          height: 75,
          child: BottomNavigationBar(
            selectedFontSize: 0,
            unselectedFontSize: 0,
            iconSize: 25,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble),
                activeIcon: Icon(Icons.chat_bubble),
                label: 'チャット',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.person),
                activeIcon: Icon(Icons.person),
                label: 'プロフィール',
              ),
            ],
            currentIndex: getCurrentIndex(context),
            onTap: (index) {
              switch (index) {
                case 0:
                  ChatRoute().go(context);
                case 1:
                  ProfileRoute().go(context);
              }
            },
          ),
        ),
      ),
    );
  }
}
