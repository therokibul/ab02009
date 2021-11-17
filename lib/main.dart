import 'package:ab02009/screens/first.dart';
import 'package:ab02009/screens/homepage.dart';
import 'package:ab02009/screens/second.dart';
import 'package:ab02009/screens/third.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'YujiMai',
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        
        MyRoute.secondRoute: (context) => Second(),
        MyRoute.thirdRoute: (context) => Third(),
      },
    );
  }
}

class MyRoute {
 
  static String secondRoute = '/second';
  static String thirdRoute = '/third';
}
