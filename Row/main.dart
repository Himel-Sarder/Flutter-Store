import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Row Column Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 208, 170),
      appBar: AppBar(
        title: const Text('Row & Column Demo'),
        backgroundColor: Colors.green,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: RowColumnDemo(),
      ),
    );
  }
}

class RowColumnDemo extends StatelessWidget {
  const RowColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          // 1️⃣ Horizontal alignment (LEFT → RIGHT)
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          // 2️⃣ Vertical alignment (TOP ↕ BOTTOM)
          crossAxisAlignment: CrossAxisAlignment.center,

          // 3️⃣ Row width behavior
          mainAxisSize: MainAxisSize.max,

          // 4️⃣ Text direction
          textDirection: TextDirection.ltr,

          // 5️⃣ Vertical direction
          verticalDirection: VerticalDirection.down,

          children: [
            // 🔴 Box 1
            Container(
              width: 60,
              height: 60,
              color: Colors.red,
              alignment: Alignment.center,
              child: Text("A", style: TextStyle(color: Colors.white)),
            ),

            // 🟢 Box 2
            Container(
              width: 80,
              height: 40,
              color: Colors.green,
              alignment: Alignment.center,
              child: Text("B", style: TextStyle(color: Colors.white)),
            ),

            // 🔵 Box 3 (Expanded demo)
            Expanded(
              child: Container(
                height: 50,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text("Expanded", style: TextStyle(color: Colors.white)),
              ),
            ),

            // 🟣 Box 4
            Container(
              width: 50,
              height: 80,
              color: Colors.purple,
              alignment: Alignment.center,
              child: Text("C", style: TextStyle(color: Colors.white)),
            ),
            // 🟠 Box 5 (Flexible demo)
            Flexible(
              child: Container(
                height: 50,
                color: Colors.orange,
                alignment: Alignment.center,
                child: Text("Flexible", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
