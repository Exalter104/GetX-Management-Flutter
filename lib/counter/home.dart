import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controlller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CounterExample counterExample = Get.put(CounterExample());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild all");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  counterExample.num.toString(),
                  style: const TextStyle(fontSize: 23),
                ),
              )
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterExample.counter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
