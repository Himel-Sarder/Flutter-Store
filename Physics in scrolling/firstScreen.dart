import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu'), backgroundColor: Colors.cyan),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(
              '${index + 1}.',
              style: const TextStyle(fontSize: 16),
            ),
            title: Text('Item ${index + 1}'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              debugPrint('Clicked Item ${index + 1}');
            },
          );
        },
      ),
    );
  }
}
