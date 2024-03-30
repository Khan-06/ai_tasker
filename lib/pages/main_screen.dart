import 'package:ai_tasker_simple/pages/home_page.dart';
import 'package:ai_tasker_simple/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: HomePage()
    );
}
