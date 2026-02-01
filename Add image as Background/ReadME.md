<img width="355" height="732" alt="image" src="https://github.com/user-attachments/assets/9a4ce60d-2ca1-4961-b1d2-4df3e18dd158" />


## 1. Basic Full-Screen Background Image (Most Used)

### Using `Container` + `BoxDecoration`

```dart
import 'package:flutter/material.dart';

class BgImageScreen extends StatelessWidget {
  const BgImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            'Your Content Here',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
```

---

## 2. Add Image to `pubspec.yaml`

Very important step.

```yaml
flutter:
  assets:
    - assets/images/bg.jpg
```

Folder structure:

```
assets/
 └── images/
     └── bg.jpg
```

Then run:

```
flutter pub get
```

---

## 3. Reusable Background Widget (Recommended for All Apps)

Create **one widget**, use everywhere.

### `background_wrapper.dart`

```dart
import 'package:flutter/material.dart';

class BackgroundWrapper extends StatelessWidget {
  final Widget child;

  const BackgroundWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
```

### Use it like this:

```dart
Scaffold(
  body: BackgroundWrapper(
    child: Center(
      child: Text(
        'Home Page',
        style: TextStyle(color: Colors.white, fontSize: 22),
      ),
    ),
  ),
);
```

---

## 4. Background Image + Dark Overlay (Professional Look)

Use this if text is hard to read.   
In templates .dart body part

```dart
Stack(
  children: [
    Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      color: Colors.black.withOpacity(0.5),
    ),
    Center(
      child: Text(
        'Login Screen',
        style: TextStyle(color: Colors.white, fontSize: 26),
      ),
    ),
  ],
)
```

---

## 5. Network Image as Background (Optional)

```dart
Container(
  decoration: BoxDecoration(
    image: DecorationImage(
      image: NetworkImage('https://example.com/bg.jpg'),
      fit: BoxFit.cover,
    ),
  ),
)
```

---

## Best Practice Summary

| Use Case            | Recommended                 |
| ------------------- | --------------------------- |
| Simple screen bg    | `Container + BoxDecoration` |
| Reusable across app | `BackgroundWrapper`         |
| Text readability    | `Stack + Overlay`           |
| Online image        | `NetworkImage`              |


