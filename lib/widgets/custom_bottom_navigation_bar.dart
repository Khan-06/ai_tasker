import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
        icon: Image.asset('assets/icons/home.png'),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/icons/chat.png'),
        label: 'Chat',
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/icons/recent.png'),
        label: 'Recent',
      ),
      BottomNavigationBarItem(
        icon: Image.asset('assets/icons/settings.png'),
        label: 'Settings',
      ),
    ]);
  }
}
