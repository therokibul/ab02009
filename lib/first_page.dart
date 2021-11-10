import 'package:flutter/material.dart';

import 'main.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

String name = '';

bool changeButton = false;

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome $name',
                textScaleFactor: 5,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: ' User Name',
                ),
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: ' Password',
                ),
              ),
              InkWell(
                onTap: () async {
                  setState(() {
                    changeButton = !changeButton;
                  });
                  await Future.delayed(Duration(seconds: 3));
                  Navigator.pushNamed(context, MyRoute.firstRoute);
                },
                child: AnimatedContainer(
                  
                  duration: Duration(seconds: 3),
                  width: changeButton ? 50 : 300,
                  margin: EdgeInsets.all(25),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: changeButton ? Colors.red : Colors.green,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: changeButton
                      ? Icon(Icons.border_right)
                      : Text(
                          'Button',
                          textAlign: TextAlign.center,
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
