import 'package:ai_tasker_simple/pages/chat_page.dart';
import 'package:ai_tasker_simple/pages/language_selection_page.dart';
import 'package:flutter/material.dart';

import 'pages/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark().copyWith(
          primaryColor: const Color.fromRGBO(0, 190, 151, 1),
          appBarTheme: const AppBarTheme(
          color: Color.fromRGBO(37, 38, 40, 1),
        ),
      ),
        home:  MainPage(),
        routes: {

        LanguageSelectionPage.routeName: (context) => const LanguageSelectionPage(),
          ChatPage.routeName: (context) => const ChatPage(),
          MainPage.routeName: (context) =>  MainPage(),
        }
    );
  }
}
