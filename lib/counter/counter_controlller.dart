import 'package:get/get.dart';

class CounterExample extends GetxController {
  var num = 1.obs;

  void counter() {
    num.value++;
    print(num.value.toString());
  }
}
