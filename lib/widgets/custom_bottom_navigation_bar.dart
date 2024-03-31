import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(_currentIndex == 0 ? 'assets/icons/home_clicked.svg' : 'assets/icons/home_unclicked.svg'),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(_currentIndex == 1 ? 'assets/icons/chat_clicked.svg' : 'assets/icons/chat_unclicked.svg'),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(_currentIndex == 2 ? 'assets/icons/recent_clicked.svg' : 'assets/icons/recent_unclicked.svg'),
          label: 'Recent',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(_currentIndex == 3 ? 'assets/icons/settings_clicked.svg' : 'assets/icons/settings_unclicked.svg'),
          label: 'Settings',
        ),
      ],
    );
  }
}