import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Mario Bros',
    'Final Fantasi'
  ];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("List View")),
        body: ListView(
          children: [
            ...options.map((e) => ListTile(
                  leading: const Icon(Icons.access_time_sharp),
                  title: Text(e),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ))
          ],
        ));
  }
}
