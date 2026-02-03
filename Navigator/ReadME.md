<img width="357" height="732" alt="image" src="https://github.com/user-attachments/assets/793b5dca-7fe0-422b-81ff-8b67b0c29a50" />
<img width="351" height="730" alt="image" src="https://github.com/user-attachments/assets/32e35d43-53cb-4ebc-b539-ce9eb7cb6fcb" />
<img width="350" height="733" alt="image" src="https://github.com/user-attachments/assets/674c9bf7-7478-4edc-98f0-fed1abc0abeb" />

### What is Navigator?

`Navigator` manages a **stack of screens (routes)**.

Think like this:

```
FirstScreen   ← bottom
SecondScreen
LastScreen    ← top (current)
```

---

## Core Navigator methods

### 1) `Navigator.push()`

Used to go to a new screen.

```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const SecondScreen()),
);
```

Adds a screen **on top of the stack**.

---

### 2) `Navigator.pop()`

Used to go back.

```dart
Navigator.pop(context);
```

Removes the **top screen**.

---

### 3) `Navigator.pushReplacement()`

Replaces the current screen.

```dart
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => const HomeScreen()),
);
```

Use case:

* Login → Home (user should not go back to login)

---

### 4) `Navigator.pushAndRemoveUntil()`

Clears previous screens.

```dart
Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder: (context) => const HomeScreen()),
  (route) => false,
);
```

Use case:

* Logout
* Splash → Home

---

## Named Routes (clean & professional way)

### `MaterialApp`

```dart
MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => const FirstScreen(),
    '/second': (context) => const SecondScreen(),
    '/last': (context) => const LastScreen(),
  },
);
```

### Navigate using route name

```dart
Navigator.pushNamed(context, '/second');
Navigator.pushNamed(context, '/last');
```

### Go back

```dart
Navigator.pop(context);
```

---

## When to use `const ContactScreen()`?

Use `const` when:

* Widget has no changing data
* Constructor is const-safe

```dart
home: const ContactScreen(),
```

Benefits:

* Better performance
* Less rebuild cost

---

## Summary

* `push` → go forward
* `pop` → go back
* `pushReplacement` → replace screen
* `pushAndRemoveUntil` → clear stack
* Named routes → best for large apps
