import 'package:ab02009/pages/second.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      // home: Wellcome(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => Home()),
        GetPage(name: '/second', page: () => Second()),
        
      ],
    );
  }
}
