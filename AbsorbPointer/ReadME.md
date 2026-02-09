


https://github.com/user-attachments/assets/65989c46-b4d8-4934-8430-c1fa7d2dc5da



`AbsorbPointer` is a Flutter widget used to **block touch interactions** (tap, swipe, press) for its child **without changing its visual appearance**.

Think of it as:
**UI is visible → but user can’t touch it**

## Basic usage

```dart
AbsorbPointer(
  absorbing: true,
  child: ElevatedButton(
    onPressed: () {
      print('Pressed');
    },
    child: const Text('Submit'),
  ),
)
```

Even though the button looks enabled, it **will not respond**.

## `absorbing` property

```dart
absorbing: true   // blocks all pointer events
absorbing: false  // allows pointer events
```

Example with condition:

```dart
AbsorbPointer(
  absorbing: isLoading,
  child: Form(
    child: Column(
      children: [...],
    ),
  ),
)
```

Used often during loading or API calls.

## AbsorbPointer vs IgnorePointer

| Widget        | Blocks touch | Blocks semantics | Layout     |
| ------------- | ------------ | ---------------- | ---------- |
| AbsorbPointer | Yes          | No               | Keeps size |
| IgnorePointer | Yes          | Yes              | Keeps size |

Key difference:

* `AbsorbPointer` **still participates in hit testing**
* `IgnorePointer` acts like it’s not there

## Common real use cases

### 1. Disable UI while loading (recommended)

```dart
Stack(
  children: [
    AbsorbPointer(
      absorbing: isLoading,
      child: YourMainUI(),
    ),
    if (isLoading)
      const Center(child: CircularProgressIndicator()),
  ],
)
```

### 2. Disable button without changing style

```dart
AbsorbPointer(
  absorbing: true,
  child: ElevatedButton(
    onPressed: () {},
    child: const Text('Pay Now'),
  ),
)
```

### 3. Prevent multiple taps

```dart
AbsorbPointer(
  absorbing: isSubmitting,
  child: ElevatedButton(
    onPressed: submitForm,
    child: const Text('Submit'),
  ),
)
```
## Important notes

* **UI does NOT gray out automatically**
* User still sees everything normally
* Good for **temporary blocking**
* Not ideal for permanent disabled state (use `onPressed: null` instead)
