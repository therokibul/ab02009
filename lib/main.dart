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
              Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1634901705540-51ecd093b267?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=388&q=80'),
                height: 200,
              ),
              Image(
                image: AssetImage('images/wrdo.png'),
                height: 200,
              ),
              Text(
                'Hello World',
                style: TextStyle(fontSize: 40, color: Colors.red),
              ),
              Container(
                width: 300,
                height: 200,
                color: Colors.teal,
                child: Text(
                  '23/10/2021',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
