import 'package:ab02009/Blog.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.blogRoute: (context) => BlogPost(),
        MyRoutes.searhRoute: (context) => Search(),
      },
    );
  }
}

class MyRoutes {
  static String homeRoute = '/home';
  static String blogRoute = '/blog';
  static String searhRoute = '/search';
}
