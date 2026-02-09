import 'package:flutter/material.dart';

// AlertDialog example

class ExampleDemo extends StatefulWidget {
  const ExampleDemo({Key? key}) : super(key: key);

  @override
  State<ExampleDemo> createState() => _ExampleDemo();
}

class _ExampleDemo extends State<ExampleDemo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Show Alert Dialog'),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              icon: const Icon(Icons.warning, color: Colors.red),
              title: const Text('Delete Item'),
              content: const Text('Are you sure you want to delete this item?'),
              backgroundColor: Colors.white,
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              actionsAlignment: MainAxisAlignment.end,
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Delete'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
