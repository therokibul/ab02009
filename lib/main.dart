import 'package:ab02009/pages/cart.dart';
import 'package:ab02009/pages/login.dart';
import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
     
      home: Login(),
      
    );
  }
}