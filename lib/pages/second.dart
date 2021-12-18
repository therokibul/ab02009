import 'package:ab02009/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Corona Update'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Image.network(
                  Get.arguments["flag"],
                  width: 100,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                Expanded(
                    child: Text(
                  Get.arguments["country"],
                  textScaleFactor: 3,
                  textAlign: TextAlign.center,
                ),),
              ],
            ),
            Text('Total Cases ${Get.arguments["cases"]}'),
            Text('today  Cases ${Get.arguments["todayCases"]}'),
            Text('Total deaths ${Get.arguments["deaths"]}'),
          ],
        ),
      ),
    );
  }
}
