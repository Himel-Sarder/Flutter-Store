<img width="365" height="797" alt="image" src="https://github.com/user-attachments/assets/c4fd2744-dabb-4631-9ec8-bef07245193e" />

--- 

## 1. Core Material Buttons (Most Important)

### 1.1 ElevatedButton

Used for primary actions (raised look).

```dart
ElevatedButton(
  onPressed: () {},
  child: Text('Submit'),
)
```

---

### 1.2 TextButton

Flat button, no background.

```dart
TextButton(
  onPressed: () {},
  child: Text('Cancel'),
)
```

---

### 1.3 OutlinedButton

Border only.

```dart
OutlinedButton(
  onPressed: () {},
  child: Text('Retry'),
)
```

---

### 1.4 IconButton

Only an icon.

```dart
IconButton(
  onPressed: () {},
  icon: Icon(Icons.favorite),
)
```

---

## 2. Extended Variants (Text + Icon)

### 2.1 ElevatedButton.icon

```dart
ElevatedButton.icon(
  onPressed: () {},
  icon: Icon(Icons.send),
  label: Text('Send'),
)
```

---

### 2.2 TextButton.icon

```dart
TextButton.icon(
  onPressed: () {},
  icon: Icon(Icons.info),
  label: Text('Info'),
)
```

---

### 2.3 OutlinedButton.icon

```dart
OutlinedButton.icon(
  onPressed: () {},
  icon: Icon(Icons.edit),
  label: Text('Edit'),
)
```

---

## 3. Floating Action Buttons (FAB)

### 3.1 FloatingActionButton

```dart
FloatingActionButton(
  onPressed: () {},
  child: Icon(Icons.add),
)
```

---

### 3.2 FloatingActionButton.extended

```dart
FloatingActionButton.extended(
  onPressed: () {},
  icon: Icon(Icons.add),
  label: Text('Add Item'),
)
```

---

## 4. Cupertino (iOS Style) Buttons

### 4.1 CupertinoButton

```dart
CupertinoButton(
  onPressed: () {},
  child: Text('iOS Button'),
)
```

---

### 4.2 CupertinoButton.filled

```dart
CupertinoButton.filled(
  onPressed: () {},
  child: Text('Filled'),
)
```

---

## 5. Gesture-Based / Custom Buttons

### 5.1 InkWell

Material ripple effect.

```dart
InkWell(
  onTap: () {},
  child: Container(
    padding: EdgeInsets.all(12),
    child: Text('Tap Me'),
  ),
)
```

---

### 5.2 GestureDetector

Raw touch control (no ripple).

```dart
GestureDetector(
  onTap: () {},
  child: Text('Custom Button'),
)
```

---

## 6. Toggle & Selection Buttons

### 6.1 ToggleButtons

```dart
ToggleButtons(
  isSelected: [true, false, false],
  onPressed: (index) {},
  children: [
    Icon(Icons.list),
    Icon(Icons.grid_view),
    Icon(Icons.map),
  ],
)
```

---

### 6.2 ChoiceChip / FilterChip / ActionChip

```dart
ChoiceChip(
  label: Text('Option'),
  selected: true,
  onSelected: (value) {},
)
```

```dart
FilterChip(
  label: Text('Filter'),
  selected: false,
  onSelected: (value) {},
)
```

```dart
ActionChip(
  label: Text('Action'),
  onPressed: () {},
)
```

---

## 7. Dropdown & Menu Buttons

### 7.1 DropdownButton

```dart
DropdownButton<String>(
  value: 'A',
  items: ['A', 'B']
      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
      .toList(),
  onChanged: (value) {},
)
```

---

### 7.2 PopupMenuButton

```dart
PopupMenuButton(
  itemBuilder: (context) => [
    PopupMenuItem(child: Text('Edit')),
    PopupMenuItem(child: Text('Delete')),
  ],
)
```

---

## 8. Form-Related Buttons

### 8.1 BackButton

```dart
BackButton()
```

---

### 8.2 CloseButton

```dart
CloseButton()
```

---

## 9. Navigation Buttons

### 9.1 NavigationBar / BottomNavigationBar Items

```dart
BottomNavigationBar(
  items: [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
  ],
)
```

---

## 10. Deprecated (Do NOT Use)

Avoid these in new projects:

* RaisedButton
* FlatButton
* OutlineButton

Replaced by:

* ElevatedButton
* TextButton
* OutlinedButton

---

## 11. Fully Custom Button Template (Reusable)

```dart
class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
```

---

## Quick Cheat Sheet

| Button Type     | Use Case           |
| --------------- | ------------------ |
| ElevatedButton  | Primary action     |
| TextButton      | Secondary / inline |
| OutlinedButton  | Less emphasis      |
| IconButton      | Icons only         |
| FAB             | Main screen action |
| CupertinoButton | iOS UI             |
| InkWell         | Custom ripple      |
| GestureDetector | Full control       |
| ToggleButtons   | Multi-select       |
| Chips           | Filters / tags     |

---
## button_demo_screen.dart
## 1. Complete Button Usage Template (Single Screen)

```dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonDemoScreen extends StatelessWidget {
  const ButtonDemoScreen({super.key});

  void onClick(String name) {
    debugPrint('$name button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Buttons Demo')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            // Elevated Button
            ElevatedButton(
              onPressed: () => onClick('Elevated'),
              child: const Text('Elevated Button'),
            ),

            const SizedBox(height: 12),

            // Text Button
            TextButton(
              onPressed: () => onClick('Text'),
              child: const Text('Text Button'),
            ),

            const SizedBox(height: 12),

            // Outlined Button
            OutlinedButton(
              onPressed: () => onClick('Outlined'),
              child: const Text('Outlined Button'),
            ),

            const SizedBox(height: 12),

            // Icon Button
            IconButton(
              onPressed: () => onClick('Icon'),
              icon: const Icon(Icons.favorite),
            ),

            const Divider(),

            // Elevated Button with Icon
            ElevatedButton.icon(
              onPressed: () => onClick('Elevated Icon'),
              icon: const Icon(Icons.send),
              label: const Text('Send'),
            ),

            const SizedBox(height: 12),

            // FAB Extended (normal usage inside screen)
            FloatingActionButton.extended(
              onPressed: () => onClick('FAB Extended'),
              icon: const Icon(Icons.add),
              label: const Text('Add Item'),
            ),

            const Divider(),

            // Cupertino Button (iOS)
            CupertinoButton(
              onPressed: () => onClick('Cupertino'),
              child: const Text('Cupertino Button'),
            ),

            const Divider(),

            // InkWell Button
            InkWell(
              onTap: () => onClick('InkWell'),
              child: Container(
                padding: const EdgeInsets.all(14),
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'InkWell Button',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            // GestureDetector Button
            GestureDetector(
              onTap: () => onClick('GestureDetector'),
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: const Center(child: Text('GestureDetector Button')),
              ),
            ),

            const Divider(),

            // Toggle Buttons
            ToggleButtons(
              isSelected: const [true, false, false],
              onPressed: (index) => onClick('Toggle $index'),
              children: const [
                Icon(Icons.list),
                Icon(Icons.grid_view),
                Icon(Icons.map),
              ],
            ),

            const Divider(),

            // Popup Menu Button
            PopupMenuButton(
              onSelected: (value) => onClick(value.toString()),
              itemBuilder: (context) => const [
                PopupMenuItem(value: 'Edit', child: Text('Edit')),
                PopupMenuItem(value: 'Delete', child: Text('Delete')),
              ],
            ),

            const Divider(),

            // Dropdown Button
            DropdownButton<String>(
              value: 'A',
              items: const [
                DropdownMenuItem(value: 'A', child: Text('Option A')),
                DropdownMenuItem(value: 'B', child: Text('Option B')),
              ],
              onChanged: (value) => onClick('Dropdown $value'),
            ),
          ],
        ),
      ),
    );
  }
}
```

---

## 2. How to Open This Screen

From `main.dart`:

```dart
import 'package:flutter/material.dart';
import 'screens/button_demo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ButtonDemoScreen(),
    );
  }
}
```

---

## 3. Reusable Button Template (Best Practice)

Use this in real apps instead of repeating code.

```dart
class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(text),
    );
  }
}
```

Usage:

```dart
AppButton(
  text: 'Login',
  onPressed: () {
    // login logic
  },
)
```

---
## **two buttons side by side**

## 1. Basic & Most Common (Using `Row`)

```dart
Row(
  children: [
    Expanded(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Yes'),
      ),
    ),
    const SizedBox(width: 12),
    Expanded(
      child: OutlinedButton(
        onPressed: () {},
        child: const Text('No'),
      ),
    ),
  ],
)
```

Why this is best:

* Same width buttons
* Responsive on all screen sizes
* Most used in forms & dialogs

---

## 2. Fixed-Width Buttons (Not Responsive)

Use this **only if you want exact sizes**.

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    SizedBox(
      width: 120,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Accept'),
      ),
    ),
    const SizedBox(width: 10),
    SizedBox(
      width: 120,
      child: OutlinedButton(
        onPressed: () {},
        child: const Text('Decline'),
      ),
    ),
  ],
)
```

---

## 3. Icon + Text Side-by-Side Buttons

```dart
Row(
  children: [
    Expanded(
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.check),
        label: const Text('Approve'),
      ),
    ),
    const SizedBox(width: 12),
    Expanded(
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: const Icon(Icons.close),
        label: const Text('Reject'),
      ),
    ),
  ],
)
```

---

## 4. Two Buttons in Bottom Area (Common UI)

```dart
Scaffold(
  bottomNavigationBar: Padding(
    padding: const EdgeInsets.all(16),
    child: Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            child: const Text('Cancel'),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: const Text('Save'),
          ),
        ),
      ],
    ),
  ),
);
```

---

## 5. Custom Styled Buttons Side by Side

```dart
Row(
  children: [
    Expanded(
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 48,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Text(
            'Confirm',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),
    const SizedBox(width: 12),
    Expanded(
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 48,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Text('Cancel'),
        ),
      ),
    ),
  ],
)
```

---

## Which One Should You Use?

| Use Case          | Best Choice           |
| ----------------- | --------------------- |
| Forms / dialogs   | `Row + Expanded`      |
| Bottom action bar | `bottomNavigationBar` |
| Icon actions      | `.icon()` buttons     |
| Custom UI         | `InkWell + Container` |
