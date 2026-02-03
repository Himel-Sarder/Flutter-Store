import 'package:flutter/material.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Last Screen')),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
            backgroundColor: Colors.pink,
          ),
          onPressed: () {
            Navigator.pop(context); // Go back to SecondScreen
          },
          child: const Text(
            'Back',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ),
    );
  }
}
