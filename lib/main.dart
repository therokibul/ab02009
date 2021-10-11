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
        body: Center(
          child: Column(
            children: [
              Icon(
                Icons.visibility_outlined,
                size: 250,
                color: Colors.teal.shade200,
              ),
              Text(
                'Hello World',
                style: TextStyle(fontSize: 40, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
