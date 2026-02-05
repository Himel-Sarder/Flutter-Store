import 'package:flutter/material.dart';

class PageViewExample extends StatelessWidget {
  const PageViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView Example'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        reverse: true,
        children: [
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.blue),
        ],
      ),
      // PageView.builder(
      //   itemCount: 5,
      //   itemBuilder: (context, index) {
      //     return Center(child: Text('Page $index'));
      //   },
      // ),
    );
  }
}
