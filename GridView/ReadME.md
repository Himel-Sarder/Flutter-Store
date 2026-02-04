<img width="357" height="734" alt="image" src="https://github.com/user-attachments/assets/2105982f-c6d5-4dc2-934a-ad6b48aa5a49" />

## GridView in Flutter

### What is GridView?

`GridView` displays widgets in a **2D scrollable grid** (rows × columns).

Used for:

* Image galleries
* Product lists
* Dashboards
* Menu layouts

## Types of GridView

### 1️. `GridView.count` (Fixed columns)

```dart
GridView.count(
  crossAxisCount: 2,
  children: [
    Container(color: Colors.red),
    Container(color: Colors.blue),
  ],
)
```

### 2. `GridView.extent` (Max item width)

```dart
GridView.extent(
  maxCrossAxisExtent: 200,
  children: [
    Container(color: Colors.green),
    Container(color: Colors.orange),
  ],
)
```

### 3️. `GridView.builder` (Dynamic / large data)

```dart
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
  ),
  itemCount: 20,
  itemBuilder: (context, index) {
    return Card(child: Center(child: Text('Item $index')));
  },
)
```

### 4️. `GridView.custom` (Advanced use)

Used with custom grid layouts (rare in exams).


## GridView Constructor (Common)

```dart
GridView({
  Axis scrollDirection = Axis.vertical,
  bool reverse = false,
  ScrollController? controller,
  bool? primary,
  ScrollPhysics? physics,
  bool shrinkWrap = false,
  EdgeInsetsGeometry? padding,
  required SliverGridDelegate gridDelegate,
  List<Widget> children = const [],
})
```

## GridView Properties Table

| Property          | Type                  | Default         | Description         |
| ----------------- | --------------------- | --------------- | ------------------- |
| `scrollDirection` | `Axis`                | `Axis.vertical` | Scroll direction    |
| `reverse`         | `bool`                | `false`         | Reverse scroll      |
| `controller`      | `ScrollController?`   | `null`          | Scroll control      |
| `primary`         | `bool?`               | `null`          | Primary scroll view |
| `physics`         | `ScrollPhysics?`      | Default         | Scroll behavior     |
| `shrinkWrap`      | `bool`                | `false`         | Wrap content size   |
| `padding`         | `EdgeInsetsGeometry?` | `null`          | Outer spacing       |
| `gridDelegate`    | `SliverGridDelegate`  | required        | Grid layout rules   |
| `children`        | `List<Widget>`        | `[]`            | Grid items          |

## Grid Delegate Types (Very Important)

### Fixed Column Count

```dart
SliverGridDelegateWithFixedCrossAxisCount(
  crossAxisCount: 2,
  mainAxisSpacing: 10,
  crossAxisSpacing: 10,
  childAspectRatio: 1,
)
```

| Property           | Description        |
| ------------------ | ------------------ |
| `crossAxisCount`   | Number of columns  |
| `mainAxisSpacing`  | Vertical spacing   |
| `crossAxisSpacing` | Horizontal spacing |
| `childAspectRatio` | Width / Height     |

### Max Item Width

```dart
SliverGridDelegateWithMaxCrossAxisExtent(
  maxCrossAxisExtent: 150,
)
```

| Property             | Description        |
| -------------------- | ------------------ |
| `maxCrossAxisExtent` | Max item width     |
| `mainAxisSpacing`    | Vertical spacing   |
| `crossAxisSpacing`   | Horizontal spacing |
| `childAspectRatio`   | Width / Height     |

## GridView vs ListView

| Feature     | GridView          | ListView       |
| ----------- | ----------------- | -------------- |
| Layout      | 2D Grid           | 1D List        |
| Scroll      | Yes               | Yes            |
| Performance | High (builder)    | High (builder) |
| Use case    | Gallery, products | Feed, menu     |

## Common Mistakes

❌ Using `GridView.count` for large data
✔ Use `GridView.builder`

❌ Overflow inside Column
✔ Use `Expanded` or `shrinkWrap: true`

❌ Wrong aspect ratio
✔ Adjust `childAspectRatio`
