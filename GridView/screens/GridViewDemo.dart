import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Example'),
        backgroundColor: Colors.red,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(color: const Color.fromARGB(255, 0, 0, 0)),
          Container(color: const Color.fromARGB(255, 18, 175, 175)),
          Container(color: const Color.fromARGB(255, 71, 57, 197)),
          Container(color: const Color.fromARGB(255, 243, 33, 236)),
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: const Color.fromARGB(255, 30, 119, 7)),
          Container(color: const Color.fromARGB(255, 142, 222, 45)),
        ],
      ),
    );
  }
}
