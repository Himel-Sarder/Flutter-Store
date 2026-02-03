import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    debugPrint('Refreshed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu'), backgroundColor: Colors.cyan),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        displacement: 20.0,
        color: Colors.green,
        strokeWidth: 4.0,
        // edgeOffset: 10.0,
        // backgroundColor: Colors.red,
        child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
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
      ),
    );
  }
}
