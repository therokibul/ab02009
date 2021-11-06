import 'package:flutter/material.dart';
import 'main.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List _icons = [
      Icons.ac_unit,
      Icons.five_g,
      Icons.safety_divider,
      Icons.flag,
      Icons.dangerous,
      Icons.e_mobiledata,
    ];

    Widget _buildicon(int index) {
      return Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(
          _icons[index],
          size: 60,
          // color: Colors.teal,
        ),
      );
    }

    return Material(
      child: GridView.builder(
        itemCount: _icons.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return _buildicon(index);
        },
      ),
    );
  }
}
