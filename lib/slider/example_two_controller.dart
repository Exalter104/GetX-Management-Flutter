import 'package:get/get.dart';

class SliderWithGetX extends GetxController {
  RxDouble opecity = 0.2.obs;
  setslider(double value) {
    opecity.value = value;
  }
}
