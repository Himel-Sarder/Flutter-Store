import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded Example'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(color: const Color.fromARGB(255, 135, 4, 4)),
          ),
          Expanded(
            flex: 1,
            child: Container(color: const Color.fromARGB(255, 9, 94, 21)),
          ),
          Expanded(
            flex: 3,
            child: Container(color: const Color.fromARGB(255, 213, 255, 86)),
          ),
        ],
      ),
    );
  }
}
