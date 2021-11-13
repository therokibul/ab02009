import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Custom AppBar'),
      centerTitle: true,
      backgroundColor: Colors.teal,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu_open),
        ),
      ],
    );
  }
}
