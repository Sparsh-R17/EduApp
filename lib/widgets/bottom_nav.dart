import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedTabIndex = 0;

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
      child: BottomNavigationBar(
        unselectedFontSize: 12,
        selectedFontSize: 13,
        currentIndex: _selectedTabIndex,
        onTap: _changeIndex,
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xff5667FD),
        unselectedItemColor: const Color(0xff364356),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/Images/explore_icon.png",
              scale: 1.1,
            ),
            label: "Explore",
            activeIcon: Image.asset(
              "assets/Images/explore_icon2.png",
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/Images/stream_icon.png",
              scale: 1.1,
            ),
            label: "Stream",
            activeIcon: Image.asset("assets/Images/stream_icon2png.png"),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/Images/class_icon.png",
              scale: 1.1,
            ),
            label: "Classwork",
            activeIcon: Image.asset("assets/Images/class_icon2.png"),
          ),
        ],
      ),
    );
  }
}
