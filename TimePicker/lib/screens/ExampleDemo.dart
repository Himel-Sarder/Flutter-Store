import 'package:flutter/material.dart';

class TimePickerExample extends StatefulWidget {
  const TimePickerExample({super.key});

  @override
  State<TimePickerExample> createState() => _TimePickerExampleState();
}

class _TimePickerExampleState extends State<TimePickerExample> {
  TimeOfDay? _time;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? picked = await showTimePicker(
                  helpText: 'Select a time brother!',
                  // cancelText: 'Why are you canceling?',
                  context: context,
                  initialTime: TimeOfDay.now(),
                );

                if (picked != null) {
                  setState(() {
                    _time = picked;
                  });
                }
              },
              child: const Text('Pick Time'),
            ),
            const SizedBox(height: 12),
            Text(
              _time == null
                  ? 'No time selected'
                  : 'Selected: ${_time!.format(context)}',
            ),
          ],
        ),
      ),
    );
  }
}
