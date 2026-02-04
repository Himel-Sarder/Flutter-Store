<img width="357" height="734" alt="image" src="https://github.com/user-attachments/assets/c4bdaa3b-9586-40b2-8e01-07878e2e2460" />

## Card Widget in Flutter

### What is Card?

`Card` is a **Material Design widget** used to display **content inside a rounded container** with **elevation (shadow)**.

Used for:

* Lists
* Profile tiles
* Product items
* Dashboard blocks

## Basic Example

```dart
Card(
  child: Padding(
    padding: EdgeInsets.all(16),
    child: Text('This is a Card'),
  ),
)
```

## Card Constructor

```dart
Card({
  Key? key,
  Color? color,
  Color? shadowColor,
  double? elevation,
  ShapeBorder? shape,
  EdgeInsetsGeometry? margin,
  bool borderOnForeground = true,
  Clip clipBehavior = Clip.none,
  Widget? child,
})
```

## Card Properties Table

| Property             | Type                  | Default                | Description              |
| -------------------- | --------------------- | ---------------------- | ------------------------ |
| `child`              | `Widget?`             | `null`                 | Content inside the card  |
| `color`              | `Color?`              | Theme card color       | Background color         |
| `shadowColor`        | `Color?`              | Theme shadow           | Shadow color             |
| `elevation`          | `double?`             | `1.0`                  | Depth (shadow size)      |
| `shape`              | `ShapeBorder?`        | RoundedRectangleBorder | Card shape & border      |
| `margin`             | `EdgeInsetsGeometry?` | `EdgeInsets.all(4.0)`  | Outer spacing            |
| `clipBehavior`       | `Clip`                | `Clip.none`            | How content is clipped   |
| `borderOnForeground` | `bool`                | `true`                 | Border drawn above child |

## Common Card Shapes

### Rounded Card

```dart
shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(12),
),
```

### Bordered Card

```dart
shape: RoundedRectangleBorder(
  side: BorderSide(color: Colors.blue),
  borderRadius: BorderRadius.circular(10),
),
```

## Card with Elevation

```dart
Card(
  elevation: 8,
  shadowColor: Colors.black,
  child: ListTile(
    leading: Icon(Icons.person),
    title: Text('Himel Sarder'),
    subtitle: Text('Flutter Developer'),
  ),
)
```

## Card vs Container

| Feature         | Card           | Container   |
| --------------- | -------------- | ----------- |
| Shadow          | Yes (built-in) | No (manual) |
| Material Design | Yes            | No          |
| Elevation       | Yes            | No          |
| Gesture support | With InkWell   | Manual      |



## Common Mistakes

❌ Using Container for Material UI
✔ Use Card

❌ No padding inside Card
✔ Add Padding or ListTile

❌ InkWell outside Card
✔ InkWell inside Card
