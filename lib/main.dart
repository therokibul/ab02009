import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            'PROFILE',
            style: TextStyle(
              fontSize: 40.0,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/wrdo.png'),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 300,
                color: Colors.black,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Your Name',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 300,
                color: Colors.black,
                padding: EdgeInsets.all(10),
                child: Text(
                  'UserName',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 300,
                color: Colors.black,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Email',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 300,
                color: Colors.black,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Cupidatat excepteur exercitation occaecat amet. Incididunt eiusmod eiusmod dolore esse esse excepteur laboris minim cupidatat. Officia culpa sunt mollit duis eiusmod tempor sunt minim irure esse voluptate. Occaecat aute et fugiat nulla deserunt sint irure adipisicing occaecat tempor reprehenderit.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
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
