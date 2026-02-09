

https://github.com/user-attachments/assets/e8a14720-1fe2-4bb9-bccf-68d574f0457a



`AnimatedAlign` is a Flutter widget that **animates the position (alignment)** of its child **automatically** when the alignment value changes.

No `AnimationController`. No `setState` animation logic. Just change the alignment.


## Basic idea

* You give it an `alignment`
* When `alignment` changes → Flutter animates smoothly

## Basic example

```dart
AnimatedAlign(
  alignment: Alignment.topLeft,
  duration: const Duration(seconds: 1),
  child: Container(
    width: 80,
    height: 80,
    color: Colors.blue,
  ),
)
```

## Interactive example (tap to move)

```dart
class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  Alignment _alignment = Alignment.topLeft;

  void _moveBox() {
    setState(() {
      _alignment = _alignment == Alignment.topLeft
          ? Alignment.bottomRight
          : Alignment.topLeft;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _moveBox,
        child: AnimatedAlign(
          alignment: _alignment,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
          child: Container(
            width: 80,
            height: 80,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
```

Tap anywhere → box moves smoothly.


## Important properties (table)

| Property       | Type                | Purpose            |
| -------------- | ------------------- | ------------------ |
| `alignment`    | `AlignmentGeometry` | Target position    |
| `duration`     | `Duration`          | Animation time     |
| `curve`        | `Curve`             | Animation behavior |
| `child`        | `Widget`            | Animated widget    |
| `heightFactor` | `double?`           | Multiplies height  |
| `widthFactor`  | `double?`           | Multiplies width   |

## Common alignments

```dart
Alignment.topLeft
Alignment.topCenter
Alignment.topRight
Alignment.centerLeft
Alignment.center
Alignment.centerRight
Alignment.bottomLeft
Alignment.bottomCenter
Alignment.bottomRight
```


## AnimatedAlign vs Align

| Widget        | Animated | Controller |
| ------------- | -------- | ---------- |
| Align         | No       | Not needed |
| AnimatedAlign | Yes      | Not needed |

## When to use `AnimatedAlign`

* Moving widgets smoothly
* Simple UI transitions
* Button/icon position change
* Avoid `AnimationController`

