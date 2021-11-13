import 'package:ab02009/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar(),
    body: Container(color: Colors.green),
    
    );
  }
}