import 'package:flutter/material.dart';

class ExampleDemo extends StatefulWidget {
  const ExampleDemo({super.key});

  @override
  State<ExampleDemo> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<ExampleDemo> {
  bool isSubmitting = false;

  void submitForm() async {
    setState(() {
      isSubmitting = true;
    });

    // Simulate API / long task
    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      isSubmitting = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
        backgroundColor: const Color.fromARGB(255, 113, 112, 112),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    title: Column(
                      children: const [
                        Icon(Icons.warning, size: 60, color: Colors.blue),
                        SizedBox(height: 10),
                        Text(
                          'About this app',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    content: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Divider(),
                        SizedBox(height: 8),
                        Text(
                          'Version 1.0.0',
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Developed by Himel Sarder',
                          style: TextStyle(fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 6),
                        Text('Dept. of CSE, JSTU', textAlign: TextAlign.center),
                        Text(
                          'Jamalpur, Bangladesh',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    actionsAlignment: MainAxisAlignment.center,
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),

      // AbsorbPointer in action
      body: Center(
        child: AbsorbPointer(
          absorbing: isSubmitting,
          child: ElevatedButton(
            onPressed: submitForm,
            child: isSubmitting
                ? const CircularProgressIndicator(
                    color: Color.fromARGB(255, 184, 25, 25),
                  )
                : const Text('Submit'),
          ),
        ),
      ),
    );
  }
}
