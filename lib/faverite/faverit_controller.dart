import 'package:get/get.dart';

class Favourit extends GetxController {
  RxList<String> exalters = [
    "Ikram",
    "Sheraz",
    "Ali Tariq",
    "Saqib",
    "Anas",
    "Umar",
    "Zarar",
    "Usman",
  ].obs;
  RxList empty = [].obs;

  addtoFavourit(String value) {
    empty.add(value);
  }

  removeFavourit(String value) {
    empty.remove(value);
  }
}
