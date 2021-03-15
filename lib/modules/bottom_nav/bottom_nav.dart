import 'package:flutter/material.dart';
import 'package:flutter_app/modules/home_screen/home_screen.dart';
import 'package:flutter_app/modules/search/search.dart';
import 'package:flutter_app/modules/settings_screen/settings_screen.dart';

class BottomNav extends StatefulWidget
{
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav>
{
  int currentIndex = 0;

  List<Widget> bodies =
  [
    HomeScreen(),
    SearchScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(),
      body: bodies[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (int index)
        {
          setState(() {
            currentIndex = index;
          });
        },
        items:
        [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
