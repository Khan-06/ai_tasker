import 'package:ai_tasker_simple/pages/language_selection_page.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: Color.fromRGBO(37, 38, 40, 1),
        ),
      ),
      home: const LanguageSelectionPage(),
    );
  }
}
