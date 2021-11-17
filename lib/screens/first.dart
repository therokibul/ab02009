import 'package:ab02009/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:ab02009/widgets/appbar.dart';
import 'package:ab02009/utils/constaints.dart';

class First extends StatelessWidget {
  const First({Key? key, required this.textData}) : super(key: key);
  final String textData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Text(
          textData,
          textScaleFactor: 2,
        ),
      ),
    );
  }
}
