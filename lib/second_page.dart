import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(
          'Back to First Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}