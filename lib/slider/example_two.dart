import 'package:flutter/material.dart';

class SliderView extends StatefulWidget {
  const SliderView({super.key});

  @override
  State<SliderView> createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {
  double opecity = .2;
  @override
  Widget build(BuildContext context) {
    debugPrint("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration:
                  BoxDecoration(color: Colors.amber.withOpacity(opecity)),
            ),
            Slider(
                value: opecity,
                onChanged: (newvalue) {
                  setState(() {
                    opecity = newvalue;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
