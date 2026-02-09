


https://github.com/user-attachments/assets/e5ef526e-1481-482f-8178-bfedcffaf0ee



In Flutter, a **TimePicker** lets the user select a **time (hour & minute)** using a system-style dialog.


## Core API

Flutter provides the function:

```dart
showTimePicker()
```

It returns a `Future<TimeOfDay?>`.

## Basic TimePicker example

```dart
TimeOfDay? selectedTime;

ElevatedButton(
  onPressed: () async {
    TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (time != null) {
      setState(() {
        selectedTime = time;
      });
    }
  },
  child: const Text('Select Time'),
);
```

## Display selecte

```dart
Text(
  selectedTime == null
      ? 'No time selected'
      : selectedTime!.format(context),
)
```

`format(context)` automatically handles 12/24-hour format.

## Complete working example

```dart
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
```

## Important parameters of `showTimePicker`

| Parameter          | Type                  | Description           |
| ------------------ | --------------------- | --------------------- |
| `context`          | `BuildContext`        | Required              |
| `initialTime`      | `TimeOfDay`           | Default selected time |
| `helpText`         | `String?`             | Title text            |
| `cancelText`       | `String?`             | Cancel button text    |
| `confirmText`      | `String?`             | OK button text        |
| `initialEntryMode` | `TimePickerEntryMode` | Dial or input         |
| `builder`          | `TransitionBuilder?`  | Theme customization   |

## 12-hour vs 24-hour format

Flutter follows **device settings** by default.

Force 24-hour format:

```dart
builder: (context, child) {
  return MediaQuery(
    data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
    child: child!,
  );
},
```

## TimePicker entry modes

```dart
TimePickerEntryMode.dial      // Clock view
TimePickerEntryMode.input    // Keyboard input
```

Example:

```dart
initialEntryMode: TimePickerEntryMode.input,
```

## Common use cases

* Booking apps
* Alarm / reminder setup
* Appointment scheduling
* Forms with time input
