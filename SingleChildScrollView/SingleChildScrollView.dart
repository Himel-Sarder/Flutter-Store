import 'package:flutter/material.dart';

class ScrollExample extends StatelessWidget {
  const ScrollExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vertical + Horizontal Scroll'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Vertical containers
            Container(
              height: 150,
              color: Colors.red,
              alignment: Alignment.center,
              child: const Text(
                'Vertical 1',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              height: 150,
              color: Colors.green,
              alignment: Alignment.center,
              child: const Text(
                'Vertical 2',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const SizedBox(height: 16),

            // Horizontal scroll section
            SizedBox(
              height: 150, // Must define height for horizontal scroll
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    Container(
                      width: 150,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: const Text(
                        'Horizontal 1',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      width: 150,
                      color: Colors.orange,
                      alignment: Alignment.center,
                      child: const Text(
                        'Horizontal 2',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      width: 150,
                      color: Colors.purple,
                      alignment: Alignment.center,
                      child: const Text(
                        'Horizontal 3',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      width: 150,
                      color: Colors.teal,
                      alignment: Alignment.center,
                      child: const Text(
                        'Horizontal 4',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      width: 150,
                      color: Colors.brown,
                      alignment: Alignment.center,
                      child: const Text(
                        'Horizontal 5',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Another vertical container
            Container(
              height: 150,
              color: Colors.yellow,
              alignment: Alignment.center,
              child: const Text(
                'Vertical 3',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),

            const SizedBox(height: 16),
            Container(
              height: 150,
              color: const Color.fromARGB(255, 43, 11, 170),
              alignment: Alignment.center,
              child: const Text(
                'Vertical 3',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
