import 'package:ab02009/controller/sum_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Second extends StatelessWidget {
  Second({Key? key}) : super(key: key);
  SumController sumController = Get.put(SumController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Corona Update'),
        ),
        body: Center(
          child: Column(
            children: [
              GetX<SumController>(builder: (cxt) {
                return Text(
                  'Couter  #1     ${cxt.count1}',
                  textScaleFactor: 2,
                );
              }),
              GetX<SumController>(builder: (cxt) {
                return Text(
                  'Couter  #2     ${cxt.count2}',
                  textScaleFactor: 2,
                );
              }),
              Text('........................', textScaleFactor: 2),
              GetX<SumController>(builder: (cxt) {
                return Text(
                  'Sum           ${cxt.sum}',
                  textScaleFactor: 2,
                );
              }),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  onPressed: () {
                    sumController.increment1();
                  },
                  child: Text('Increment Couter #1')),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  onPressed: () {
                    sumController.increment2();
                  },
                  child: Text('Increment Couter #2')),
            ],
          ),
        ));
  }
}
