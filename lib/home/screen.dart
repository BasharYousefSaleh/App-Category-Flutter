import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'operation.dart';
import 'profile.dart';
import 'shopping.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final pages = [
    HomePage(),
    ShoppingPage(),
    OperationPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: Image.asset(
            "icons/${theme.brightness.name}/payments.png",
            width: 30,
            height: 30,
          ),
        ),
        title: Text("محفظتـــك"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
        ],
      ),
      body: pages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset(
          "icons/${theme.brightness.name}/payments.png",
          color: theme.floatingActionButtonTheme.foregroundColor,
          width: 30,
          height: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: theme.bottomNavigationBarTheme.backgroundColor,
        activeColor: theme.bottomNavigationBarTheme.selectedItemColor,
        inactiveColor: theme.bottomNavigationBarTheme.unselectedItemColor,
        icons: const [
          Icons.home,
          Icons.shopping_bag,
          Icons.list,
          Icons.person,
        ],
        activeIndex: _currentIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        leftCornerRadius: 20,
        rightCornerRadius: 20,
        onTap: (index) {
          _currentIndex = index;
          setState(() {});
        },
        //other params
      ),
    );
  }
}

extension BExtension on Brightness {
  Brightness get reverse {
    if (this == Brightness.light) return Brightness.dark;
    return Brightness.light;
  }
}
