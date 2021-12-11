import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List album = [];
  Future getData() async {
    await DefaultAssetBundle.of(context)
        .loadString('assets/json/photolist.json')
        .then((value) {
      setState(() {
        album = jsonDecode(value);
      });
    });
  }

  @override
  initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
      child: Container(
        height: 300,
        child: ListView.builder(
            itemCount: album.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.toNamed('/details', arguments: {
                    'title': album[index]['title'].toString(),
                    'id': album[index]['id'].toString(),
                  });
                },
                child: Container(
                  height: 200,
                  child: Column(
                    children: [
                      Text(album[index]['title']),
                      Text('ID: ${album[index]['id']}'),
                    ],
                  ),
                ),
              );
            }),
      ),
    ));
  }
}
