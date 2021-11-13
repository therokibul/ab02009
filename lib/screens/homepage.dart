import 'package:ab02009/widgets/appbar.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoute.firstRoute);
              },
              child: Text('First Page'),
              color: Colors.green,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoute.secondRoute);
              },
              child: Text('Second Page'),
              color: Colors.green,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoute.thirdRoute);
              },
              child: Text('Third Page'),
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
