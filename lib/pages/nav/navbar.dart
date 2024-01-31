import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:travalling_ui/pages/home/home.dart';
import 'package:travalling_ui/pages/profile/profile.dart';

class NavBarPages extends StatefulWidget {
  const NavBarPages({super.key});

  @override
  State<NavBarPages> createState() => _NavBarPagesState();
}

class _NavBarPagesState extends State<NavBarPages> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            const HomePage(),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.green,
            ),
            const ProfilePage()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              inactiveColor: const Color(0xFF7C838D),
              activeColor: const Color(0xFF24BAEC),
              title: const Text('Home'),
              icon: const Icon(Icons.home)),
          BottomNavyBarItem(
              inactiveColor: const Color(0xFF7C838D),
              title: const Text('Item Two'),
              icon: const Icon(Icons.apps)),
          BottomNavyBarItem(
              inactiveColor: const Color(0xFF7C838D),
              title: const Text('Item Three'),
              icon: const Icon(Icons.chat_bubble)),
          BottomNavyBarItem(
              inactiveColor: const Color(0xFF7C838D),
              title: const Text('Profile'),
              icon: const Icon(Icons.person)),
        ],
      ),
    );
  }
}
