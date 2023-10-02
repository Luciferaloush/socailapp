import 'package:flutter/material.dart';
import 'package:socail/view/home.dart';
import 'package:socail/view/profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _curretIndex = 0;

  void nav(int newIndex) {
    setState(() {
      _curretIndex = newIndex;
    });
  }

  final List<Widget> pages = const [
    Home(),
    Home(),
    Home(),
    Profile(),
  ];
  bool isIcon = false;

  void changeColor() {
    isIcon = !isIcon;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_curretIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _curretIndex,
        showUnselectedLabels: false,
        onTap: nav,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
              size: 30,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat, color: Colors.grey, size: 30),
              label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications, color: Colors.grey, size: 30),
              label: "Notficatiom"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.grey, size: 30),
              label: "Profile")
        ],
      ),
    );
  }
}
