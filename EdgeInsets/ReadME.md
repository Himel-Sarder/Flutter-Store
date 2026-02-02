<img width="357" height="736" alt="image" src="https://github.com/user-attachments/assets/425c19dd-7aa1-4938-a3ac-fb7e477cb4ab" />


## What is `EdgeInsets`?

`EdgeInsets` is used for padding or margin around widgets. Commonly used in:

* `Padding`
* `Container.margin`
* `Container.padding`
* `SafeArea.minimum`
* `ListView.padding`

---

## All EdgeInsets Constructors

### 1. `EdgeInsets.all()`

Same value on all sides.

```dart
EdgeInsets.all(16)
```

Left, top, right, bottom = 16

---

### 2. `EdgeInsets.symmetric()`

Equal spacing on horizontal and/or vertical sides.

```dart
EdgeInsets.symmetric(
  horizontal: 20,
  vertical: 10,
)
```

Left=20, right=20, top=10, bottom=10

---

### 3. `EdgeInsets.only()`

Custom value per side.

```dart
EdgeInsets.only(
  left: 10,
  top: 20,
  right: 30,
  bottom: 40,
)
```

---

### 4. `EdgeInsets.fromLTRB()`

Explicit order: left, top, right, bottom.

```dart
EdgeInsets.fromLTRB(10, 20, 30, 40)
```

---

### 5. `EdgeInsets.zero`

No padding at all.

```dart
EdgeInsets.zero
```

All sides = 0

---

## Direction-Aware EdgeInsets

### 6. `EdgeInsetsDirectional.only()`

Respects LTR and RTL layouts.

```dart
EdgeInsetsDirectional.only(
  start: 20,
  end: 10,
  top: 8,
  bottom: 8,
)
```

In LTR: start → left, end → right
In RTL: start → right, end → left

---

### 7. `EdgeInsetsDirectional.fromSTEB()`

Start, Top, End, Bottom.

```dart
EdgeInsetsDirectional.fromSTEB(20, 10, 5, 10)
```

---

## Real Usage Examples

### Padding

```dart
Padding(
  padding: EdgeInsets.all(16),
  child: Text("Hello"),
)
```

---

### Margin + Padding

```dart
Container(
  margin: EdgeInsets.symmetric(vertical: 10),
  padding: EdgeInsets.only(left: 20, right: 20),
  child: Text("Box"),
)
```

---

### ListView padding

```dart
ListView(
  padding: EdgeInsets.fromLTRB(16, 20, 16, 10),
  children: [],
)
```

---

## Visual Box Demo (All Types Together)

```dart
Container(
  color: Colors.grey.shade300,
  padding: EdgeInsets.all(20),
  child: Container(
    margin: EdgeInsets.only(bottom: 10),
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    color: Colors.green,
    child: Text(
      "EdgeInsets Demo",
      style: TextStyle(color: Colors.white),
    ),
  ),
)
```

---

## EdgeInsets vs EdgeInsetsDirectional

| Feature                  | EdgeInsets | EdgeInsetsDirectional |
| ------------------------ | ---------- | --------------------- |
| LTR only                 | Yes        | No                    |
| RTL support              | No         | Yes                   |
| Use in multilingual apps | No         | Yes                   |
