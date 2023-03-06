import 'package:ai_genie/GetxApis/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginControlller lgc = Get.put(LoginControlller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Login")),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(38.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: lgc.emailController.value,
                  decoration: const InputDecoration(
                    hintText: "email",
                  ),
                ),
                TextField(
                  controller: lgc.passController.value,
                  decoration: const InputDecoration(
                    hintText: "password",
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Obx(() => InkWell(
                      onTap: () {
                        lgc.loginApi();
                      },
                      child: Container(
                        height: 45,
                        width: 200,
                        decoration: const BoxDecoration(color: Colors.green),
                        child: Center(
                            child: lgc.loaDing.value
                                ? const CircularProgressIndicator()
                                : const Text("Login")),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
