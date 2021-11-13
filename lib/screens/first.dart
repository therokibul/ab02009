import 'package:ab02009/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:ab02009/widgets/appbar.dart';

class First extends StatelessWidget {
  const First({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar(),
    body: Container(color: Colors.green),
    
    );
  }
}