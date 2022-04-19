import 'package:flutter/material.dart';
import 'package:rabegn/screens/admin_dashboards/dashboard.dart';
import 'package:rabegn/screens/admin_dashboards/recipe_dashboard.dart';
import 'package:rabegn/screens/admin_dashboards/users_dashboard.dart';

class AdminRoute extends StatefulWidget {
  @override
  State<AdminRoute> createState() => _AdminRouteState();
}

class _AdminRouteState extends State<AdminRoute> {
  int _currentIndex = 0;

  List pages = [
    const DashBoard(),
    const UsersDashBoard(),
    const RecipesDashBoard(),
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
            label: "DashBoard",
            icon: Icon(Icons.dashboard),
          ),
          BottomNavigationBarItem(
            label: "Users",
            icon: Icon(Icons.people),
          ),
          BottomNavigationBarItem(
            label: "Resipes",
            icon: Icon(Icons.outdoor_grill),
          ),
        ],
      ),
    );
  }
}
