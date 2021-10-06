import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          leading: Icon(Icons.mail_outlined),
          title: Text('Hello World'),
        ),
      ),
    ),
  );
}
