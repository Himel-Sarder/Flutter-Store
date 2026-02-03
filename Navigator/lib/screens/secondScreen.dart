import 'package:flutter/material.dart';
import 'lastScreen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Normal push
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LastScreen()),
                );
              },
              child: const Text(
                'Go to Last Screen',
                style: TextStyle(color: Colors.white),
              ),
            ),

            const SizedBox(height: 16),

            // PushReplacement
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LastScreen()),
                );
              },
              child: const Text(
                'Go to Last Screen (Replacement)',
                style: TextStyle(color: Colors.white),
              ),
            ),

            const SizedBox(height: 16),

            // PushAndRemoveUntil
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LastScreen()),
                  (route) => false, // remove all previous routes
                );
              },
              child: const Text(
                'Go to Last Screen (Remove Until)',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
