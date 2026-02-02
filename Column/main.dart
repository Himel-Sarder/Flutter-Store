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
      theme: ThemeData(primarySwatch: Colors.green),
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
        child: Column(
          children: [
            Expanded(child: RowColumnDemo()),
            SizedBox(height: 20),
            Expanded(child: ColumnDemo()),
          ],
        ),
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
        const Text(
          "ROW DEMO",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          textDirection: TextDirection.ltr,
          verticalDirection: VerticalDirection.down,
          children: [
            box(Colors.red, "A", 60, 60),
            box(Colors.green, "B", 80, 40),
            Expanded(child: box(Colors.blue, "Expanded", null, 50)),
            box(Colors.purple, "C", 50, 80),
            Flexible(child: box(Colors.orange, "Flexible", null, 50)),
          ],
        ),
      ],
    );
  }
}

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      textDirection: TextDirection.ltr,
      verticalDirection: VerticalDirection.down,
      children: [
        box(Colors.red, "A", 80, 60),
        box(Colors.green, "B", 120, 40),
        Expanded(child: box(Colors.blue, "Expanded", double.infinity, null)),
        box(Colors.purple, "C", 100, 80),
        Flexible(child: box(Colors.orange, "Flexible", double.infinity, 50)),
      ],
    );
  }
}

Widget box(Color color, String text, double? width, double? height) {
  return Container(
    width: width,
    height: height,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
      text,
      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
  );
}
