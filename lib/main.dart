import 'package:flutter/material.dart';
import 'package:flutter_begin/pages/HomePage.dart';
import 'package:flutter_begin/pages/ItemPage.dart';
import 'package:flutter_begin/pages/LoginPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFCEDDEE)),
        routes: {
          "/": (context) => const LoginPage(),
          "homePage": (context) => const HomePage(),
          "itemPage": (context) => ItemPage(),
        });
  }
}
