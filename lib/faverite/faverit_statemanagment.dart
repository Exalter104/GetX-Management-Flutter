import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'faverit_controller.dart';

class FaveritStatManagment extends StatefulWidget {
  const FaveritStatManagment({super.key});

  @override
  State<FaveritStatManagment> createState() => _FaveritStatManagmentState();
}

class _FaveritStatManagmentState extends State<FaveritStatManagment> {
  Favourit fv = Get.put(Favourit());
  @override
  Widget build(BuildContext context) {
    print("Rebuild GetX");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Faverite App"),
      ),
      body: ListView.builder(
        itemCount: fv.exalters.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
                onTap: () {
                  if (fv.empty.contains(fv.exalters[index].toString())) {
                    fv.removeFavourit(fv.exalters[index].toString());
                  } else {
                    fv.addtoFavourit(fv.exalters[index].toString());
                  }
                },
                title: Text(fv.exalters[index].toString()),
                trailing: Obx(
                  () => Icon(
                    Icons.favorite,
                    color: fv.empty.contains(fv.exalters[index].toString())
                        ? Colors.red
                        : Colors.white,
                  ),
                )),
          );
        },
      ),
    );
  }
}
