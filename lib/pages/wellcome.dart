import 'package:ab02009/pages/home.dart';
import 'package:ab02009/pages/details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Wellcome extends StatelessWidget {
  const Wellcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Wellcome",
            textScaleFactor: 5,
          ),
          InkWell(
            onTap: (){
              // Get.to(()=>Home());
              Get.toNamed('/home');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Get Started',
                  textScaleFactor: 2,
                ),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
