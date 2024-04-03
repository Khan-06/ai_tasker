import 'package:flutter/material.dart';

import '../widgets/custom_bottom_navigation_bar.dart';
import '../widgets/custom_drawer.dart';
import '../pages/home_page.dart';
import '../widgets/customAppBar.dart';
import 'chat_page.dart';

class MainPage extends StatelessWidget {
  static const routeName = '/main_page';
  final PageController _pageController = PageController();
   MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CustomAppBar(),
        drawer: const CustomDrawer(),
        bottomNavigationBar:  CustomBottomNavigationBar(pageController: _pageController),
        body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            children: [
              SingleChildScrollView(child: HomePage()),
              const ChatPage()
            ]),
      );
}
