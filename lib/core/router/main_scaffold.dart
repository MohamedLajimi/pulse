import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pulse/core/theme/app_colors.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,

      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: AppColors.background,
          border: Border(top: BorderSide(color: AppColors.border, width: 0.5)),
        ),
        child: NavigationBar(
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: (index) {
            navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            );
          },
          overlayColor: WidgetStatePropertyAll(Colors.transparent),
          destinations: const [
            NavigationDestination(
              icon: Icon(CupertinoIcons.house),
              selectedIcon: Icon(CupertinoIcons.house_fill),
              label: 'Feed',
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.search),
              selectedIcon: Icon(CupertinoIcons.search, size: 28),
              label: 'Search',
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.plus_square),
              selectedIcon: Icon(CupertinoIcons.plus_square_fill),
              label: 'Post',
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.paperplane),
              selectedIcon: Icon(CupertinoIcons.paperplane_fill),
              label: 'Messages',
            ),
            NavigationDestination(
              icon: Icon(CupertinoIcons.person_crop_circle),
              selectedIcon: Icon(CupertinoIcons.person_crop_circle_fill),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
