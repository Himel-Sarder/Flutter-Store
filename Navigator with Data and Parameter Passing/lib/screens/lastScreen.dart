import 'package:flutter/material.dart';

class LastScreen extends StatelessWidget {
  final String title;
  final int count;

  const LastScreen({super.key, required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Last Screen')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Showing received data
            Text(
              title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            Text('Count: $count', style: const TextStyle(fontSize: 18)),

            const SizedBox(height: 24),

            // 🔙 POP → Back to SecondScreen
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                backgroundColor: Colors.pink,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back', style: TextStyle(color: Colors.white)),
            ),

            const SizedBox(height: 16),

            // 🔁 POP UNTIL → Back to FirstScreen
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                backgroundColor: Colors.deepPurple,
              ),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: const Text(
                'Back to First Screen',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
