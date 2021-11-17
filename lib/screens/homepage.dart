// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ab02009/screens/first.dart';
import 'package:ab02009/screens/second.dart';
import 'package:ab02009/screens/third.dart';
import 'package:ab02009/utils/constaints.dart';
import 'package:ab02009/widgets/appbar.dart';
import 'package:ab02009/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final myController = TextEditingController();
  final _text = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        TextField(
          
          controller: myController,
          decoration: InputDecoration(hintText: 'Enter text'),
        ),
        CustomBtn(
          title: 'First Button',
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (contex) => First(
                          textData: myController.text,
                        ),),);
          },
        ),
        SizedBox(
          height: 5,
        ),
        CustomBtn(
          title: 'Second Button',
          onTap: () {
            Navigator.pushNamed(context, MyRoute.secondRoute);
          },
        ),
        SizedBox(
          height: 5,
        ),
        CustomBtn(
          title: 'third Button',
          onTap: () {
            Navigator.pushNamed(context, MyRoute.thirdRoute);
          },
        ),
      ],
    ));
  }
}
