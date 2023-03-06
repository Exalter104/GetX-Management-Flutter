import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginControlller extends GetxController {
  final emailController = TextEditingController().obs;
  final passController = TextEditingController().obs;
  RxBool loaDing = false.obs;

  void loginApi() async {
    loaDing.value = true;
    try {
      final response = await post(Uri.parse("https://reqres.in/api/login"),
          body: {
            "email": emailController.value.text,
            "password": passController.value.text
          });

      var data = jsonDecode(response.body);

      print(data);
      if (response.statusCode == 200) {
        loaDing.value = false;
        Get.snackbar("Login", "Success");
      } else {
        loaDing.value = false;
        Get.snackbar("Login", data["error"]);
      }
    } catch (e) {
      loaDing.value = false;
      Get.snackbar("Exceptions", e.toString());
    }
  }
}
