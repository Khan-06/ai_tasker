import 'package:ai_tasker_simple/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
    );
  }
}
