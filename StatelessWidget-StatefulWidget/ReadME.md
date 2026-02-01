<img width="1938" height="1126" alt="image" src="https://github.com/user-attachments/assets/729a9b31-e878-48de-b988-5876c3d176e6" />


## 1. StatelessWidget

### What it means

A **StatelessWidget** is a widget **without changeable state**.

* Data does **NOT change**
* UI is **fixed** once built
* Rebuild happens only when **parent changes**

### Example

```dart
class WelcomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome, Himel',
      style: TextStyle(fontSize: 22),
    );
  }
}
```

### When to use

* Text
* Icons
* Images
* Static UI
* Buttons without internal logic

---

## 2. StatefulWidget

### What it means

A **StatefulWidget** has **mutable state**.

* Data **can change**
* UI updates using `setState()`
* Has lifecycle methods

### Example

```dart
class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Count: $count'),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Text('Increase'),
        ),
      ],
    );
  }
}
```

### When to use

* Button click changes UI
* API data loading
* Forms
* Animation
* Toggle / Switch

---

## 3. Key Difference Table

| Feature           | StatelessWidget | StatefulWidget   |
| ----------------- | --------------- | ---------------- |
| State change      | No              | Yes              |
| UI update         | Parent rebuild  | `setState()`     |
| Lifecycle methods | No              | Yes              |
| Performance       | Faster          | Slightly heavier |
| Use case          | Static UI       | Dynamic UI       |

---

## 4. Lifecycle (StatefulWidget only)

```dart
initState()     // called once
build()         // UI rendering
setState()      // update UI
dispose()       // cleanup
```

Android mapping:

* `onCreate()` → `initState()`
* `onDestroy()` → `dispose()`

---

## 5. Real-World Example

### Login Button Text

Wrong Stateless (won’t work properly):

```dart
class LoginButton extends StatelessWidget {
  bool loading = false; // wrong

  @override
  Widget build(BuildContext context) {
    return Text(loading ? 'Loading...' : 'Login');
  }
}
```

Stateful:

```dart
class LoginButton extends StatefulWidget {
  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() => loading = true);
      },
      child: Text(loading ? 'Loading...' : 'Login'),
    );
  }
}
```
