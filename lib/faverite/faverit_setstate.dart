import 'package:flutter/material.dart';

class FaveritSetState extends StatefulWidget {
  const FaveritSetState({super.key});

  @override
  State<FaveritSetState> createState() => _FaveritSetStateState();
}

class _FaveritSetStateState extends State<FaveritSetState> {
  List<String> exalters = [
    "Ikram",
    "Sheraz",
    "Ali Tariq",
    "Saqib",
    "Anas",
    "Umar",
    "Zarar",
    "Usman",
  ];
  List empty = [];

  @override
  Widget build(BuildContext context) {
    print("Rebuild Setstate");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Faverite App"),
      ),
      body: ListView.builder(
        itemCount: exalters.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                setState(() {});
                if (empty.contains(exalters[index].toString())) {
                  empty.remove(exalters[index].toString());
                } else {
                  empty.add(exalters[index].toString());
                }
              },
              title: Text(exalters[index].toString()),
              trailing: Icon(
                Icons.favorite,
                color: empty.contains(exalters[index].toString())
                    ? Colors.red
                    : Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
