## Basic AppBar Structure

```dart
AppBar(
  title: Text('Home Page'),
)
```

This is the **minimum** AppBar.

---

## Most Used AppBar Properties (with examples)

### 1. `title`

Text or any widget shown in the center/left.

```dart
title: Text('Home Page'),
```

---

### 2. `centerTitle`

Center the title (useful for Android/iOS consistency).

```dart
centerTitle: true,
```

---

### 3. `backgroundColor`

Change AppBar color.

```dart
backgroundColor: Colors.blue,
```

---

### 4. `leading`

Widget on the **left side** (back button, menu icon).

```dart
leading: Icon(Icons.menu),
```

Custom action:

```dart
leading: IconButton(
  icon: Icon(Icons.arrow_back),
  onPressed: () {
    Navigator.pop(context);
  },
),
```

---

### 5. `actions`

Widgets on the **right side** (icons, buttons).

```dart
actions: [
  IconButton(
    icon: Icon(Icons.search),
    onPressed: () {},
  ),
  IconButton(
    icon: Icon(Icons.more_vert),
    onPressed: () {},
  ),
],
```

---

### 6. `elevation`

Shadow depth below AppBar.

```dart
elevation: 4,
```

---

### 7. `shape`

Rounded bottom corners.

```dart
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.vertical(
    bottom: Radius.circular(20),
  ),
),
```

---

### 8. `bottom`

Add tabs or any widget below AppBar.

```dart
bottom: PreferredSize(
  preferredSize: Size.fromHeight(40),
  child: Text('Subtitle'),
),
```

Most common use: **TabBar**

---

### 9. `automaticallyImplyLeading`

Hide default back button.

```dart
automaticallyImplyLeading: false,
```

---

### 10. `toolbarHeight`

Change AppBar height.

```dart
toolbarHeight: 80,
```

---

## Example: AppBar with Multiple Properties

```dart
AppBar(
  title: Text('Home Page'),
  centerTitle: true,
  backgroundColor: Colors.deepPurple,
  elevation: 5,
  leading: Icon(Icons.home),
  actions: [
    IconButton(
      icon: Icon(Icons.notifications),
      onPressed: () {},
    ),
    IconButton(
      icon: Icon(Icons.settings),
      onPressed: () {},
    ),
  ],
)
```

---

## Quick Property Summary Table

| Property          | Purpose         |
| ----------------- | --------------- |
| `title`           | Main title      |
| `leading`         | Left icon       |
| `actions`         | Right icons     |
| `backgroundColor` | AppBar color    |
| `centerTitle`     | Center title    |
| `elevation`       | Shadow          |
| `bottom`          | Tabs / subtitle |
| `shape`           | Rounded corners |
