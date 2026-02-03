import 'package:flutter/material.dart';
import 'secondScreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen'), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(20),
            backgroundColor: Colors.cyan,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondScreen()),
            );
          },
          child: const Text(
            'Go to Second Screen',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ),
    );
  }
}
