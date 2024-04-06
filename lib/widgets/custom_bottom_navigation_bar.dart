import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final PageController? pageController;
   const CustomBottomNavigationBar({Key? key, required this.pageController}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            widget.pageController?.jumpToPage(index);
            _currentIndex = index;
          });
        },
        selectedItemColor: const Color.fromRGBO(0, 178, 169, 1),
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
      ),
    );
  }
}