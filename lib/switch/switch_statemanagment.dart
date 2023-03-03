import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'switch_controller.dart';

class SwitchesStateMAnagment extends StatefulWidget {
  const SwitchesStateMAnagment({super.key});

  @override
  State<SwitchesStateMAnagment> createState() => _SwitchesStateMAnagmentState();
}

class _SwitchesStateMAnagmentState extends State<SwitchesStateMAnagment> {
  Switches sw = Get.put(Switches());

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
        appBar: AppBar(
          title: const Text("Switch SetState"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Notifications"),
            Obx(() => Switch(
                value: sw.swtch.value,
                onChanged: (newValue) {
                  print("rebuild2");
                  sw.swtch.value = newValue;
                }))
          ],
        ));
  }
}
