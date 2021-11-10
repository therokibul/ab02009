import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

bool changeButton = false;

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: InkWell(
          onTap: () async {
            setState(() {
              changeButton = !changeButton;
            });
            await Future.delayed(Duration(seconds: 3));
            Navigator.pop(context);
          },
          child: AnimatedAlign(
            alignment:
                changeButton ? Alignment.centerLeft : Alignment.centerRight,
            duration: Duration(seconds: 3),
            child: Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.all(25),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(Icons.arrow_left),
            ),
          ),
        ),
      ),
    );
  }
}
