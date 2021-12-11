import 'package:ab02009/pages/wellcome.dart';
import 'package:ab02009/pages/details.dart';
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
        GetPage(name: "/", page: () => Wellcome()),
        GetPage(name: '/home', page: () => Home()),
        GetPage(name: '/details', page: () => Details()),
      ],
    );
  }
}
