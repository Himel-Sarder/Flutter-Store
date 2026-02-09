


https://github.com/user-attachments/assets/dca62c76-e4cb-44fd-a13a-0892909e6aff



## What Stepper does

* Breaks a process into **multiple steps**
* Shows **current, completed, and pending steps**
* Supports **Next / Back / Continue / Cancel**

## Stepper types

```dart
StepperType.vertical   // default
StepperType.horizontal // horizontal steps
```

Example:

```dart
type: StepperType.horizontal,
```

## `Step` properties table

| Property   | Type        | Description       |
| ---------- | ----------- | ----------------- |
| `title`    | `Widget`    | Step title        |
| `content`  | `Widget`    | Step body         |
| `subtitle` | `Widget?`   | Optional subtitle |
| `state`    | `StepState` | Step status       |
| `isActive` | `bool`      | Highlights step   |
| `label`    | `Widget?`   | Horizontal label  |

## `StepState` values

```dart
StepState.indexed   // default
StepState.editing
StepState.complete
StepState.disabled
StepState.error
```

Example:

```dart
state: _currentStep > 0
    ? StepState.complete
    : StepState.indexed,
```

## Full Stepper with state control

```dart
Step(
  title: const Text('Profile'),
  content: const Text('Profile info'),
  isActive: _currentStep >= 1,
  state: _currentStep > 1
      ? StepState.complete
      : StepState.editing,
)
```

## Custom buttons (important)

```dart
controlsBuilder: (context, details) {
  return Row(
    children: [
      ElevatedButton(
        onPressed: details.onStepContinue,
        child: const Text('Next'),
      ),
      const SizedBox(width: 10),
      TextButton(
        onPressed: details.onStepCancel,
        child: const Text('Back'),
      ),
    ],
  );
},
```

## When to use Stepper

* Multi-step forms
* Checkout process
* User onboarding
* Registration flows

## Stepper vs PageView

| Feature          | Stepper | PageView |
| ---------------- | ------- | -------- |
| Step indicator   | Yes     | No       |
| Form flow        | Yes     | Manual   |
| Built-in buttons | Yes     | No       |
