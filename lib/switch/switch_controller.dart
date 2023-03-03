import 'package:get/get.dart';

class Switches extends GetxController {
  RxBool swtch = false.obs;
  setSwitch(bool value) {
    swtch.value = value;
  }
}
