import 'package:get/get.dart';

class SumController extends GetxController {
  final count1 = 0.obs;
  final count2 = 0.obs;

  increment1() => count1.value++;
  increment2() => count2.value++;

  int get sum => count1.value + count2.value;

  @override
  void onInit() {

    super.onInit();
    
    ever(count1, (cxt) => print('$cxt has been changed'));
    once(count1, (cxt) => print('$cxt was been changed Once'));
    debounce(count1, (cxt) => print('debounce $cxt '),
        time: Duration(seconds: 1));
    interval(count1, (cxt) => print('interval $cxt '),
        time: Duration(seconds: 1));
  }
}
