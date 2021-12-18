import 'package:ab02009/controller/counter_controller.dart';
import 'package:ab02009/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(
                init: CounterController(),
                builder: (cnxt) {
                  return Text(
                    '${cnxt.count}',
                    textScaleFactor: 4,
                  );
                }),
            GetX<UserController>(
                init: UserController(),
                builder: (cxt) {
                  return Text('Name: ${cxt.user.value.name}');
                }),
            Obx(() {
              return Text(
                  "Count: ${Get.find<UserController>().user.value.count}");
            }),
            
            ElevatedButton(
              onPressed: () {
                Get.find<UserController>()
                    .updateUser(Get.find<CounterController>().count);
              },
              child: Text('Update'),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: (){
                Get.toNamed('/second');
              }, 
              child: Text('Next Page'),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<CounterController>().increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
