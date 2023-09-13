import 'package:flutter/material.dart';
import 'package:toku/Screens/colors_page.dart';
import 'package:toku/Screens/family_members.dart';
import 'package:toku/Screens/home_page.dart';
import 'package:toku/Screens/numbers_page.dart';
import 'package:toku/Screens/phrases_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_page(),
      routes: {
        'numberpage': (context) => numbers_page(),
        'familypage': (context) => family_members(),
        'colorpage': (context) => colors_page(),
        'phrasespage': (context) => phrases_page(),
      },
    );
  }
}
