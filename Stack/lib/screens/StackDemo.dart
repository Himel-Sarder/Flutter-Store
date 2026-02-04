import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Example'),
        backgroundColor: Colors.red,
      ),
      body: Stack(
        alignment: AlignmentGeometry.center,
        children: [
          Image.asset('assets/images/bg4.png'),
          Positioned(
            // bottom: 200,
            // left: 200,
            child: Text(
              'Beautiful View',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                backgroundColor: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
