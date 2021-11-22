import 'package:flutter/material.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    return Center(
      child: Container(
        height: screenHeight * 0.7,
        width: screenWidth * 0.9,
        constraints: BoxConstraints(
          maxWidth: 600,
        ),
        color: Colors.red,
      ),
    );
  }
}
