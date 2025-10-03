import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

import '../../achievements/achievements_screen.dart';
import '../../home/ui/home_screen.dart';
import '../../settings/settings_screen.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomeScreen(),
    AchievementsScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.home),
            tooltip: "Home",
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.trophy),
            label: "Achievements",
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
