// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade800,
          centerTitle: true,
          leading: Icon(Icons.trending_up_outlined),
          title: Text(
            'PROFILE',
            style: TextStyle(
              fontSize: 40.0,
              color: Colors.black,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.flutter_dash_outlined,
                size: 200.0,
              ),
              Text(
                'Rokibul Hasan',
                style: TextStyle(fontSize: 40.0),
              ),
              Text(
                '@therokibul',
                style: TextStyle(fontSize: 30.0),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
