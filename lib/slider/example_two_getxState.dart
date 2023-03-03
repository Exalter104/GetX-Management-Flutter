import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'example_two_controller.dart';

class SliderWithGetXState extends StatefulWidget {
  const SliderWithGetXState({super.key});

  @override
  State<SliderWithGetXState> createState() => _SliderWithGetXStateState();
}

class _SliderWithGetXStateState extends State<SliderWithGetXState> {
  //Dependency Injection and access by all widgets and variable

  SliderWithGetX swg = Get.put(SliderWithGetX());
  @override
  Widget build(BuildContext context) {
    print("rebuild2");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.amber.withOpacity(swg.opecity.value)),
              );
            }),
            Obx(
              () => Slider(
                  value: swg.opecity.value,
                  onChanged: (val) {
                    swg.setslider(val);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
