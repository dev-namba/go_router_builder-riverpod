import 'package:flutter/material.dart';
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
              /// Miropos
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
            currentIndex: 0,
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
