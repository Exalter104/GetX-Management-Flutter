import 'package:flutter/material.dart';

class SwitchSetState extends StatefulWidget {
  const SwitchSetState({super.key});

  @override
  State<SwitchSetState> createState() => _SwitchSetStateState();
}

class _SwitchSetStateState extends State<SwitchSetState> {
  bool sw = false;
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
        appBar: AppBar(
          title: const Text("Switch SetState"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Notifications"),
            Switch(
                value: sw,
                onChanged: (val) {
                  sw = val;
                  setState(() {});
                })
          ],
        ));
  }
}
