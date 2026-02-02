

## What is `Row` in Flutter?

`Row` is a **layout widget** that arranges its children **horizontally (left → right)**.

Used for:

* Icons with text
* Buttons side by side
* Profile info (avatar + name)
* Action bars

---

## Basic Structure of `Row`

```dart
Row(
  children: [
    Widget1(),
    Widget2(),
    Widget3(),
  ],
)
```

---

## Core `Row` Properties

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisSize: MainAxisSize.max,
  textDirection: TextDirection.ltr,
  verticalDirection: VerticalDirection.down,
  children: [],
)
```

---

## 1. `children` (Required)

Widgets inside the row.

```dart
Row(
  children: [
    Icon(Icons.person),
    Text("Himel"),
  ],
)
```

---

## 2. `mainAxisAlignment` (Horizontal Alignment)

Controls **horizontal positioning** of children.

| Value          | Description            |
| -------------- | ---------------------- |
| `start`        | Left                   |
| `center`       | Center                 |
| `end`          | Right                  |
| `spaceBetween` | Space between widgets  |
| `spaceAround`  | Space around widgets   |
| `spaceEvenly`  | Equal space everywhere |

<img width="2402" height="942" alt="image" src="https://github.com/user-attachments/assets/e15ac451-479c-4d42-ab84-bc5cf677faa2" />

Example:

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text("Left"),
    Text("Right"),
  ],
)
```

---

## 3. `crossAxisAlignment` (Vertical Alignment)

Controls **vertical alignment** inside the row.

| Value      | Description          |
| ---------- | -------------------- |
| `start`    | Top                  |
| `center`   | Center               |
| `end`      | Bottom               |
| `stretch`  | Fill height          |
| `baseline` | Align text baselines |

Example:

```dart
Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Icon(Icons.person),
    Text("Profile"),
  ],
)
```

---

## 4. `mainAxisSize`

Controls **row width**.

| Value           | Meaning          |
| --------------- | ---------------- |
| `max` (default) | Takes full width |
| `min`           | Wraps content    |

```dart
Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star),
    Text("Favorite"),
  ],
)
```

---

## 5. `textDirection`

Controls left-to-right or right-to-left layout.

```dart
Row(
  textDirection: TextDirection.rtl,
  children: [
    Icon(Icons.arrow_back),
    Text("Back"),
  ],
)
```

---

## 6. `verticalDirection`

Direction of vertical alignment.

```dart
Row(
  verticalDirection: VerticalDirection.up,
  children: [
    Icon(Icons.person),
    Text("Name"),
  ],
)
```

---

## Handling Overflow (Very Important)

### Wrong (Overflow Error)

```dart
Row(
  children: [
    Text("Very long text that overflows"),
    Icon(Icons.warning),
  ],
)
```

### Correct – Use `Expanded`

```dart
Row(
  children: [
    Expanded(
      child: Text(
        "Very long text that wraps properly",
        overflow: TextOverflow.ellipsis,
      ),
    ),
    Icon(Icons.warning),
  ],
)
```

---

## `Expanded` vs `Flexible`

### Expanded

Takes **all remaining space**.

```dart
Expanded(child: Text("Expand"))
```

### Flexible

Takes **only what it needs**.

```dart
Flexible(child: Text("Flexible"))
```

---

## Real-World Example (Profile Row)

```dart
Row(
  children: [
    CircleAvatar(radius: 25),
    SizedBox(width: 12),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Himel Sarder", style: TextStyle(fontWeight: FontWeight.bold)),
        Text("Flutter Developer"),
      ],
    ),
  ],
)
```

---

## Common Mistakes

* Forgetting `Expanded` → overflow error
* Too many widgets without spacing
* Using `Row` instead of `ListView` for scrolling content

---

## When NOT to Use Row

* When content can overflow horizontally → use `ListView`
* When layout is vertical → use `Column`
* When both row & column needed → use `Flex`


