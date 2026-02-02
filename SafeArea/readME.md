<img width="380" height="780" alt="image" src="https://github.com/user-attachments/assets/cc4e8977-c6ec-4986-beef-bb01207ad639" />

## What is `SafeArea` in Flutter?

> **SafeArea** is a widget that automatically adds padding to avoid system UI areas like:

* Notch
* Status bar
* Camera cutout
* Navigation bar (gesture area)
* Rounded screen corners

So your UI **doesn’t get hidden** behind them.

---

## Problem Without SafeArea

```dart
Scaffold(
  body: Column(
    children: [
      Text('Hello'),
    ],
  ),
);
```

On phones with:

* notch
* curved edges

Text may be **cut off** or **overlapped**.

---

## Solution: Wrap with SafeArea

```dart
Scaffold(
  body: SafeArea(
    child: Column(
      children: [
        Text('Hello'),
      ],
    ),
  ),
);
```

---

## Very Common Usage

```dart
SafeArea(
  child: Scaffold(
    body: Center(
      child: Text('Safe Content'),
    ),
  ),
);
```

or (more common)

```dart
Scaffold(
  body: SafeArea(
    child: Center(
      child: Text('Safe Content'),
    ),
  ),
);
```

---

## SafeArea Properties

### 1. `top`

Include top padding (status bar)

```dart
SafeArea(
  top: true,   // default
  child: ...
);
```

---

### 2. `bottom`

Include bottom padding (gesture bar)

```dart
SafeArea(
  bottom: true, // default
  child: ...
);
```

---

### 3. `left` / `right`

Avoid curved edges

```dart
SafeArea(
  left: true,
  right: true,
  child: ...
);
```

---

### 4. `minimum`

Add extra padding manually

```dart
SafeArea(
  minimum: EdgeInsets.all(16),
  child: ...
);
```

---

## Real Example (HomeScreen)

```dart
Scaffold(
  appBar: AppBar(title: Text('Home')),
  body: SafeArea(
    child: Column(
      children: [
        Text('Welcome'),
        SizedBox(height: 20),
        ElevatedButton(onPressed: () {}, child: Text('Login')),
      ],
    ),
  ),
);
```

---

## SafeArea vs Padding (Important Difference)

| SafeArea     | Padding |
| ------------ | ------- |
| Automatic    | Manual  |
| Device aware | Fixed   |
| Avoids notch | Doesn’t |

---

## When to Use SafeArea?

Use it when:

* Full screen UI
* Custom AppBar
* Splash screen
* Login screen
* Bottom navigation content

Not needed when:

* Using `Scaffold + AppBar` only (AppBar already handles top)
