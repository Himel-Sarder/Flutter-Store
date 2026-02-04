<img width="358" height="735" alt="image" src="https://github.com/user-attachments/assets/6e00d341-8aa5-412f-b4b0-d3c6aca34245" />

## Expanded widget in Flutter

Expanded is used inside Row, Column, or Flex to make a widget take the remaining available space.

It only works with Flex-based widgets.

## Basic example

```dart
Row(
  children: [
    Expanded(child: Container(color: Colors.red)),
    Expanded(child: Container(color: Colors.blue)),
  ],
)
```

Both containers share equal width.

## Constructor

```dart
Expanded({
  int flex = 1,
  required Widget child,
})
```

## Properties table

| Property | Type   | Default  | Description                |
| -------- | ------ | -------- | -------------------------- |
| child    | Widget | required | Widget that expands        |
| flex     | int    | 1        | Space ratio among siblings |

Using flex

```dart
Row(
  children: [
    Expanded(flex: 2, child: Container(color: Colors.red)),
    Expanded(flex: 1, child: Container(color: Colors.blue)),
  ],
)
```

Red takes 2 parts, blue takes 1 part of space.

## Expanded in Column

```dart
Column(
  children: [
    Expanded(child: Container(color: Colors.green)),
    Expanded(child: Container(color: Colors.yellow)),
  ],
)
```

Each widget takes equal height.


## Expanded vs Flexible

| Feature               | Expanded | Flexible |
| --------------------- | -------- | -------- |
| Fills remaining space | Yes      | Optional |
| Child size control    | No       | Yes      |
| Overflow safety       | Lower    | Higher   |

## Common error

Incorrect use

```dart
Expanded(child: Text('Error'));
```

Correct use

```dart
Row(
  children: [
    Expanded(child: Text('Correct')),
  ],
)
```
