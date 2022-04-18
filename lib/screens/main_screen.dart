import 'package:flutter/material.dart';
import 'explore_screen.dart';
import 'home_screen.dart';

import 'profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  List pages = [
    const HomeScreen(),
    const ExploreScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).backgroundColor,
        onTap: (value) {
          setState(() => _currentIndex = value);
        },
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            label: "home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "explore",
            icon: Icon(Icons.category_sharp),
          ),
          BottomNavigationBarItem(
            label: "profile",
            icon: Icon(Icons.people),
          ),
        ],
      ),
    );
  }
}
