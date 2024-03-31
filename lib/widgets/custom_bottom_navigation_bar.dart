import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/icons/home.svg'),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/icons/chat.svg'),
        label: 'Chat',
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/icons/recent.svg'),
        label: 'Recent',
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/icons/settings.svg'),
        label: 'Settings',
      ),
    ]);
  }
}