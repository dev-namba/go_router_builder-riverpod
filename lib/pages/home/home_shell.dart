import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router_practice/router/routes/home/chat/chat_route.dart';
import 'package:go_router_practice/router/routes/home/profile/profile_route.dart';
import 'package:go_router_practice/router/routes/top_routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeShell extends HookConsumerWidget {
  const HomeShell({
    required this.navigationShell,
    super.key,
  });

  final Widget navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = useState<int>(0);

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
            currentIndex: currentIndex.value,
            onTap: (index) {
              switch (index) {
                case 0:
                  ChatRoute().go(context);
                case 1:
                  ProfileRoute().go(context);
              }
              currentIndex.value = index;
            },
          ),
        ),
      ),
    );
  }
}
