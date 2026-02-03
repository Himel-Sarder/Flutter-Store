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
      title: 'EdgeInsets Demo',
      home: const EdgeInsetsDemo(),
    );
  }
}

class EdgeInsetsDemo extends StatelessWidget {
  const EdgeInsetsDemo({super.key});

  Widget buildBox(String title, EdgeInsets padding, Color color) {
    return Container(
      color: color,
      padding: padding,
      margin: const EdgeInsets.all(8),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("EdgeInsets Examples")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildBox(
              "EdgeInsets.all(20)",
              const EdgeInsets.all(20),
              Colors.red,
            ),
            buildBox(
              "EdgeInsets.symmetric(h: 30, v: 10)",
              const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              Colors.green,
            ),
            buildBox(
              "EdgeInsets.only(l: 10, t: 20, r: 30, b: 40)",
              const EdgeInsets.only(left: 70, top: 20, right: 30, bottom: 40),
              Colors.blue,
            ),
            buildBox(
              "EdgeInsets.fromLTRB(5, 15, 25, 35)",
              const EdgeInsets.fromLTRB(5, 15, 25, 35),
              Colors.purple,
            ),
            buildBox("EdgeInsets.zero", EdgeInsets.zero, Colors.orange),
            buildBox(
              "EdgeInsetsDirectional.only(start: 20, end: 10, top: 8, bottom: 8)",
              const EdgeInsetsDirectional.only(
                start: 20,
                end: 10,
                top: 8,
                bottom: 8,
              ).resolve(TextDirection.ltr),
              Colors.teal,
            ),
            buildBox(
              "EdgeInsetsDirectional.fromSTEB(10, 15, 20, 25)",
              const EdgeInsetsDirectional.fromSTEB(
                10,
                15,
                20,
                25,
              ).resolve(TextDirection.ltr),
              Colors.brown,
            ),
          ],
        ),
      ),
    );
  }
}
