

https://github.com/user-attachments/assets/9c07c437-d0fa-43f6-9353-67556da0c6db





## What `AnimatedContainer` does

When **any supported property changes**, Flutter animates from the old value to the new value smoothly.

## Basic example

```dart
AnimatedContainer(
  duration: const Duration(seconds: 1),
  width: 200,
  height: 200,
  color: Colors.blue,
)
```

## Interactive example (tap to animate)

```dart
class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState
    extends State<AnimatedContainerExample> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.blue;
  BorderRadius _borderRadius = BorderRadius.circular(8);

  void _animate() {
    setState(() {
      _width = _width == 100 ? 200 : 100;
      _height = _height == 100 ? 200 : 100;
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
      _borderRadius =
          _borderRadius == BorderRadius.circular(8)
              ? BorderRadius.circular(50)
              : BorderRadius.circular(8);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _animate,
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
          ),
        ),
      ),
    );
  }
}
```

Tap the box → size, color, and shape animate.

## Properties you can animate

| Property           | Example          |
| ------------------ | ---------------- |
| `width` / `height` | Resize           |
| `color`            | Background color |
| `padding`          | Inner spacing    |
| `margin`           | Outer spacing    |
| `alignment`        | Child position   |
| `decoration`       | Border, radius   |
| `constraints`      | Min / max size   |
| `transform`        | Scale, rotate    |


## Important properties table

| Property     | Type          | Purpose          |
| ------------ | ------------- | ---------------- |
| `duration`   | `Duration`    | Animation time   |
| `curve`      | `Curve`       | Animation style  |
| `width`      | `double?`     | Container width  |
| `height`     | `double?`     | Container height |
| `color`      | `Color?`      | Background color |
| `decoration` | `Decoration?` | Border & radius  |
| `padding`    | `EdgeInsets?` | Inner space      |
| `margin`     | `EdgeInsets?` | Outer space      |
| `alignment`  | `Alignment?`  | Child position   |

## AnimatedContainer vs Container

| Feature           | Container | AnimatedContainer |
| ----------------- | --------- | ----------------- |
| Animation         | No        | Yes               |
| Controller needed | No        | No                |
| Property change   | Instant   | Smooth            |


## When to use `AnimatedContainer`

* Button hover / tap effects
* Expand–collapse UI
* Theme transitions
* Shape and size changes

